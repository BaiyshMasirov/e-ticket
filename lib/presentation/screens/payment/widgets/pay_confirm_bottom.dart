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

class PayConfirmBottom extends HookWidget {
  final GlobalKey<FormState> _formKey;
  final Function() _onSuccess;
  final Function() _closePressed;

  PayConfirmBottom._({
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

    return SizedBox(
      height: 280.h,
      child: Loader(
        isLoadingFunc: (context) => context.select<PayConfirmCubit, bool>(
          (cubit) => cubit is PayCreatingState || cubit is PayConfirmingState,
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
                          .read<PayConfirmCubit>()
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
                BlocBuilder<PayConfirmCubit, PayConfirmState>(
                  builder: (context, state) => PhoneFormFieldZ(
                    controller: phoneController,
                    enabled: state.maybeMap(
                      orElse: () => true,
                      confirmingPaymentSuccess: (_) => false,
                      confirmingPayment: (_) => false,
                      confirmingPaymentError: (_) => false,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                BlocBuilder<PayConfirmCubit, PayConfirmState>(
                  builder: (context, state) => Visibility(
                    visible: state.maybeMap(
                      orElse: () => true,
                      initial: (_) => false,
                      creatingPayment: (_) => false,
                      creatingPaymentError: (_) => false,
                    ),
                    child: TextFormFieldZ(
                      controller: codeController,
                      label: LocaleKeys.confirmation_code.tr(),
                      checkForNullEmpty: true,
                      textInputType: TextInputType.number,
                    ),
                  ),
                ),
                const Spacer(),
                BlocBuilder<PayConfirmCubit, PayConfirmState>(
                  builder: (context, state) => PrimaryButton(
                    title: state.map(
                      initial: (_) => LocaleKeys.get_confirmation_code.tr(),
                      creatingPayment: (_) =>
                          LocaleKeys.get_confirmation_code.tr(),
                      creatingPaymentError: (_) =>
                          LocaleKeys.get_confirmation_code.tr(),
                      creatingPaymentSuccess: (_) => LocaleKeys.confirm.tr(),
                      confirmingPayment: (_) => LocaleKeys.confirm.tr(),
                      confirmingPaymentSuccess: (_) => LocaleKeys.confirm.tr(),
                      confirmingPaymentError: (_) => LocaleKeys.confirm.tr(),
                    ),
                    onPressed: state.map(
                      initial: (_) => createPayment(context, phoneController),
                      creatingPayment: (_) =>
                          createPayment(context, phoneController),
                      creatingPaymentError: (_) =>
                          createPayment(context, phoneController),
                      creatingPaymentSuccess: (_) => confirmMethod(
                        context,
                        phoneController,
                        codeController,
                      ),
                      confirmingPayment: (_) => confirmMethod(
                        context,
                        phoneController,
                        codeController,
                      ),
                      confirmingPaymentSuccess: (_) => null,
                      confirmingPaymentError: (_) => confirmMethod(
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
    );
  }

  Function()? confirmMethod(
    BuildContext context,
    TextEditingController phoneController,
    TextEditingController codeController,
  ) {
    return () {
      if (_formKey.currentState?.validate() ?? false) {
        context.read<PayConfirmCubit>().confirmPayment(
              phoneNumber: phoneController.text,
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
        context.read<PayConfirmCubit>().createPayment(
              phoneNumber: phoneController.text,
            );
      }
    };
  }

  static Future<void> showPayConfirmBottom({
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
        create: (ctx2) => PayConfirmCubit.initialize(
          bookingId: bookingId,
          paymentType: paymentType,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: PayConfirmBottom._(
            formKey: formKey,
            closePressed: closePressed,
            onSuccess: onSuccess,
          ),
        ),
      ),
    );
  }
}
