import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/payment/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class PayPhoneNumberConfirmBottom extends HookWidget {
  final GlobalKey<FormState> _formKey;
  final Function() _onSuccess;
  final Function() _closePressed;

  const PayPhoneNumberConfirmBottom._({
    required GlobalKey<FormState> formKey,
    required Function() onSuccess,
    required Function() closePressed,
    Key? key,
  })  : _onSuccess = onSuccess,
        _closePressed = closePressed,
        _formKey = formKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = useTextEditingController();

    return BlocListener<PaymentPhoneCubit, PaymentPhoneState>(
      listener: (ctx, s) => s.maybeMap(
        paymentCreateSuccess: (_) {
          launchUrl(
            Uri.parse(_.deepLink),
          );

          return _onSuccess();
        },
        orElse: () {},
      ),
      child: SizedBox(
        height: 200.h,
        child: Loader(
          isLoadingFunc: (context) => context.select<PaymentPhoneCubit, bool>(
            (c) => c.state.maybeMap(
              orElse: () => false,
              paymentCreating: (_) => true,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context
                            .read<PaymentPhoneCubit>()
                            .paymentType
                            .name
                            .toLowerCase()
                            .tr(),
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: _closePressed,
                        icon: Icon(
                          CupertinoIcons.clear_circled,
                          color: context.colorScheme.errorContainer,
                          size: 24.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  BlocBuilder<PaymentPhoneCubit, PaymentPhoneState>(
                    builder: (context, state) => PhoneFormFieldZ(
                      controller: phoneController,
                      readOnly: state.maybeMap(
                        orElse: () => false,
                        paymentCreateSuccess: (_) => true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<PaymentPhoneCubit, PaymentPhoneState>(
                    builder: (c, s) => Visibility(
                      visible: s.maybeMap(
                        orElse: () => false,
                        paymentCreateError: (_) => true,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          s.maybeMap(
                            orElse: () => '',
                            paymentCreateError: (_) => _.errorMessage ?? '',
                          ),
                          maxLines: 3,
                          style: TextStyle(color: context.colorScheme.error),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<PaymentPhoneCubit, PaymentPhoneState>(
                    builder: (context, state) => PrimaryButton(
                      title: LocaleKeys.confirm.tr(),
                      onPressed: createPayment(context, phoneController),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Function()? createPayment(
    BuildContext context,
    TextEditingController phoneController,
  ) {
    return () {
      if (_formKey.currentState?.validate() ?? false) {
        context.read<PaymentPhoneCubit>().createPayment(
              phoneNumber: PhoneFormatters.unMaskPhoneNumber(
                phoneController.text,
              ),
            );
      }
    };
  }

  static Future<void> show({
    required BuildContext context,
    required String bookingId,
    required PaymentType paymentType,
    required Function() onSuccess,
    required Function() closePressed,
  }) async {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    showModalBottomSheet(
      isDismissible: false,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
      ),
      context: context,
      builder: (ctx) => BlocProvider(
        create: (ctx2) => PaymentPhoneCubit.initialize(
          bookingId: bookingId,
          paymentType: paymentType,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: PayPhoneNumberConfirmBottom._(
            formKey: formKey,
            closePressed: closePressed,
            onSuccess: onSuccess,
          ),
        ),
      ),
    );
  }
}
