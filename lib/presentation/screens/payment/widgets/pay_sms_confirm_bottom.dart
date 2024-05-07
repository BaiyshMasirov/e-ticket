import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/payment/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaySMSConfirmBottom extends HookWidget {
  final GlobalKey<FormState> _formKey;
  final Function() _onSuccess;
  final Function() _closePressed;

  const PaySMSConfirmBottom._({
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
    final codeController = useTextEditingController();

    return BlocListener<PaymentSMSCubit, PaymentSMSState>(
      listener: (ctx, s) => s.maybeMap(
        paymentConfirmSuccess: (_) => _onSuccess(),
        orElse: () {},
      ),
      child: SizedBox(
        height: 300.h,
        child: Loader(
          isLoadingFunc: (context) => context.select<PaymentSMSCubit, bool>(
            (cubit) =>
                cubit is PaymentSMSStateCreating ||
                cubit is PaymentSMSStateConfirming,
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
                            .read<PaymentSMSCubit>()
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
                  BlocBuilder<PaymentSMSCubit, PaymentSMSState>(
                    builder: (context, state) => PhoneFormFieldZ(
                      controller: phoneController,
                      readOnly: state.maybeMap(
                        orElse: () => false,
                        paymentCreateSuccess: (_) => true,
                        paymentConfirmSuccess: (_) => true,
                        paymentConfirming: (_) => true,
                        paymentConfirmError: (_) => true,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  BlocBuilder<PaymentSMSCubit, PaymentSMSState>(
                    builder: (context, state) => Visibility(
                      visible: state.maybeMap(
                        orElse: () => true,
                        initial: (_) => false,
                        paymentCreating: (_) => false,
                        paymentCreateError: (_) => false,
                      ),
                      child: TextFormFieldZ(
                        controller: codeController,
                        label: LocaleKeys.confirmation_code.tr(),
                        checkForNullEmpty: true,
                        textInputType: TextInputType.number,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<PaymentSMSCubit, PaymentSMSState>(
                    builder: (c, s) => Visibility(
                      visible: s.maybeMap(
                        orElse: () => false,
                        paymentConfirmError: (_) => true,
                        paymentCreateError: (_) => true,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          s.maybeMap(
                            orElse: () => '',
                            paymentConfirmError: (_) => _.errorMessage ?? '',
                            paymentCreateError: (_) => _.errorMessage ?? '',
                          ),
                          maxLines: 3,
                          style: TextStyle(color: context.colorScheme.error),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  BlocBuilder<PaymentSMSCubit, PaymentSMSState>(
                    builder: (context, state) => PrimaryButton(
                      title: state.map(
                        initial: (_) => LocaleKeys.get_confirmation_code.tr(),
                        paymentCreating: (_) =>
                            LocaleKeys.get_confirmation_code.tr(),
                        paymentCreateError: (_) =>
                            LocaleKeys.get_confirmation_code.tr(),
                        paymentCreateSuccess: (_) => LocaleKeys.confirm.tr(),
                        paymentConfirming: (_) => LocaleKeys.confirm.tr(),
                        paymentConfirmSuccess: (_) => LocaleKeys.confirm.tr(),
                        paymentConfirmError: (_) => LocaleKeys.confirm.tr(),
                      ),
                      onPressed: state.map(
                        initial: (_) => createPayment(context, phoneController),
                        paymentCreating: (_) =>
                            createPayment(context, phoneController),
                        paymentCreateError: (_) =>
                            createPayment(context, phoneController),
                        paymentCreateSuccess: (_) => confirmMethod(
                          context,
                          phoneController,
                          codeController,
                        ),
                        paymentConfirming: (_) => confirmMethod(
                          context,
                          phoneController,
                          codeController,
                        ),
                        paymentConfirmSuccess: (_) => null,
                        paymentConfirmError: (_) => confirmMethod(
                          context,
                          phoneController,
                          codeController,
                        ),
                      ),
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

  Function()? confirmMethod(
    BuildContext context,
    TextEditingController phoneController,
    TextEditingController codeController,
  ) {
    return () {
      if (_formKey.currentState?.validate() ?? false) {
        context.read<PaymentSMSCubit>().confirmPaymentBySms(
              phoneNumber: PhoneFormatters.unMaskPhoneNumber(
                phoneController.text,
              ),
              code: codeController.text,
            );
      }
    };
  }

  Function()? createPayment(
    BuildContext context,
    TextEditingController phoneController,
  ) {
    return () {
      if (_formKey.currentState?.validate() ?? false) {
        context.read<PaymentSMSCubit>().createPaymentByPhoneNumber(
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
        create: (ctx2) => PaymentSMSCubit.initialize(
          bookingId: bookingId,
          paymentType: paymentType,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: PaySMSConfirmBottom._(
            formKey: formKey,
            closePressed: closePressed,
            onSuccess: onSuccess,
          ),
        ),
      ),
    );
  }
}
