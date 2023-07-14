import 'package:e_ti_app/helper/utils/assets_helper.dart';
import 'package:e_ti_app/views/widgets/common/custom_successful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Helpers
import '../../../helper/extensions/context_extensions.dart';
import '../../../helper/utils/constants.dart';
import '../../../helper/utils/form_validator.dart';

//Providers
import '../../../helper/utils/text_styles.dart';
import '../../../providers/all_providers.dart';

//States
import '../../../providers/states/auth_state.dart';

//Routing
import '../../../routes/app_router.dart';

//Widgets
import '../../../routes/route.dart';
import '../../widgets/common/custom_dialog.dart';
import '../../widgets/common/custom_text_button.dart';
import '../../widgets/common/custom_textfield.dart';
import '../../widgets/common/rounded_bottom_container.dart';
import '../../widgets/common/scrollable_column.dart';

class RegisterScreen extends StatefulHookConsumerWidget {
  const RegisterScreen();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  bool _formHasData = false;
  late final formKey = GlobalKey<FormState>();

  Future<bool> _showConfirmDialog() async {
    if (_formHasData) {
      final doPop = await showDialog<bool>(
        context: context,
        barrierColor: Constants.barrierColor,
        builder: (ctx) => const CustomDialog.confirm(
          title: 'Are you sure?',
          body: 'Do you want to go back without saving your form data?',
          trueButtonText: 'Yes',
          falseButtonText: 'No',
        ),
      );
      if (doPop == null || !doPop) return Future<bool>.value(false);
    }
    return Future<bool>.value(true);
  }

  CustomTextButton buildNextButton(ValueNotifier<bool> userDetailsState) {
    return CustomTextButton.outlined(
      width: double.infinity,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          userDetailsState.value = false;
        }
      },
      padding: const EdgeInsets.only(left: 20, right: 15),
      border: Border.all(color: Constants.primaryColor, width: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Далее',
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 15,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w600,
            ),
          ),

          //Arrow
          Icon(
            Icons.arrow_forward_sharp,
            size: 26,
            color: Constants.primaryColor,
          )
        ],
      ),
    );
  }

  CustomTextButton buildConfirmButton({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String middleName,
    required String contact,
  }) {
    return CustomTextButton.gradient(
      width: double.infinity,
      onPressed: () {
        // AppRouter.pushNamed(Routes.CustomSuccessScreenRoute);
        if (formKey.currentState!.validate() && password.isNotEmpty) {
          formKey.currentState!.save();
          ref.read(authProvider.notifier).register(
                email: email,
                password: password,
                firstName: firstName,
                lastName: lastName,
                middleName: middleName,
                phoneNumber: contact,
              );
        }
      },
      gradient: Constants.buttonGradientOrange,
      child: Consumer(
        builder: (context, ref, child) {
          final authState = ref.watch(authProvider);
          if (authState is AUTHENTICATING) {
            return const Center(
              child: SpinKitRing(
                color: Colors.white,
                size: 30,
                lineWidth: 4,
                duration: Duration(milliseconds: 1100),
              ),
            );
          }
          return child!;
        },
        child: const Center(
          child: Text(
            'ПОДТВЕРДИТЬ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  VoidCallback? onBackTap(ValueNotifier<bool> userDetailsState) {
    if (!userDetailsState.value) return () => userDetailsState.value = true;
  }

  void onFormChanged() {
    if (!_formHasData) _formHasData = true;
  }

  void onAuthStateFailed(String reason) async {
    await showDialog<bool>(
      context: context,
      barrierColor: Constants.barrierColor.withOpacity(0.75),
      builder: (ctx) {
        return CustomDialog.alert(
          title: 'Ошибка',
          body: reason,
          buttonText: 'Повторить',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userDetailsState = useState<bool>(true);
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final cPasswordController = useTextEditingController(text: '');
    final firstNameController = useTextEditingController(text: '');
    final lastNameController = useTextEditingController(text: '');
    final middleNameController = useTextEditingController(text: '');
    final contactController = useTextEditingController(text: '');

    void onAuthStateAuthenticated(String? currentUserFullName) {
      emailController.clear();
      firstNameController.clear();
      lastNameController.clear();
      middleNameController.clear();
      passwordController.clear();
      cPasswordController.clear();
      contactController.clear();
      _formHasData = false;
      // AppRouter.pushNamed(Routes.CustomSuccessScreenRoute);

      // Navigator.of(context).push(
      //   MaterialPageRoute(
      //       builder: (context) => CustomSuccessful(
      //             textSuccess: 'Success',
      //             textButton: "Enter",
      //             onPressed: () {
      //               buildConfirmButton(
      //                 email: emailController.text,
      //                 password: passwordController.text,
      //                 firstName: firstNameController.text,
      //                 lastName: lastNameController.text,
      //                 middleName: middleNameController.text,
      //                 contact: contactController.text,
      //               );
      //             },
      //           )),
      // );
      AppRouter.popUntilRoot();
    }

    ref.listen<AuthState>(
      authProvider,
      (previous, authState) async => authState.maybeWhen(
        authenticated: onAuthStateAuthenticated,
        failed: onAuthStateFailed,
        orElse: () {},
      ),
    );
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ScrollableColumn(
          children: [
            //Input card
            Form(
              key: formKey,
              onChanged: onFormChanged,
              onWillPop: _showConfirmDialog,
              child: RoundedBottomContainer(
                onBackTap: onBackTap(userDetailsState),
                children: [
                  const SizedBox(height: 40),
                  if (userDetailsState.value)
                    const SizedBox(
                      child: CircleAvatar(
                        radius: 120.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 120.0,
                          backgroundImage: AssetImage(AssetsHelper.personLogo),
                        ),
                      ),
                    )
                  else
                    const Image(
                      image: AssetImage(AssetsHelper.lockLogo),
                    ),
                  userDetailsState.value
                      ? const SizedBox.shrink()
                      : const SizedBox(height: 35),
                  userDetailsState.value
                      ? const SizedBox.shrink()
                      : Text(
                          'Придумайте надежный пароль',
                          textAlign: TextAlign.center,
                          style: UtilTextStyles.lockText,
                        ),
                  const SizedBox(height: 60),
                  if (userDetailsState.value)
                    _UserDetailFields(
                      firstNameController: firstNameController,
                      lastNameController: lastNameController,
                      middleNameController: middleNameController,
                      emailController: emailController,
                      passwordController: passwordController,
                      contactController: contactController,
                    )
                  else
                    _PasswordDetailFields(
                      cPasswordController: cPasswordController,
                      passwordController: passwordController,
                    ),
                ],
              ),
            ),

            // const Spacer(),

            //Button
            Padding(
              padding: const EdgeInsets.fromLTRB(
                10,
                40,
                10,
                Constants.bottomInsets,
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 550),
                switchOutCurve: Curves.easeInBack,
                child: userDetailsState.value
                    ? buildNextButton(userDetailsState)
                    : buildConfirmButton(
                        email: emailController.text,
                        password: passwordController.text,
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        middleName: middleNameController.text,
                        contact: contactController.text,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _UserDetailFields extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController middleNameController;
  final TextEditingController contactController;
  final TextEditingController passwordController;
  final TextEditingController emailController;

  const _UserDetailFields({
    required this.firstNameController,
    required this.lastNameController,
    required this.middleNameController,
    required this.emailController,
    required this.passwordController,
    required this.contactController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Full name
        CustomTextField(
          controller: firstNameController,
          hintText: 'Введите имя',
          autofocus: true,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          validator: FormValidator.NameValidator,
        ),

        const SizedBox(height: 25),

        CustomTextField(
          controller: lastNameController,
          hintText: 'Введите фамилию',
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          validator: FormValidator.NameValidator,
        ),

        const SizedBox(height: 25),

        CustomTextField(
          controller: middleNameController,
          hintText: 'Введите отчество',
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          validator: FormValidator.NameValidator,
        ),

        const SizedBox(height: 25),
        //Email
        CustomTextField(
          controller: emailController,
          hintText: 'Введите электронную почту',
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          validator: FormValidator.emailValidator,
        ),

        const SizedBox(height: 25),

        //Contact
        CustomTextField(
          controller: contactController,
          hintText: 'Введите номер телефона',
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
          validator: FormValidator.contactValidator,
          prefix: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(17, 0, 5, 0)),
              Text(
                '+996',
                style: TextStyle(
                  fontSize: 18,
                  color: Constants.barrierColorLight,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: VerticalDivider(thickness: 1.1, color: Colors.white),
              )
            ],
          ),
        ),

        const SizedBox(height: 25),

        CustomTextField(
          controller: passwordController,
          autofocus: true,
          hintText: 'Введите пароль',
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          validator: FormValidator.passwordValidator,
        ),
      ],
    );
  }
}

class _PasswordDetailFields extends StatelessWidget {
  final TextEditingController passwordController;
  final TextEditingController cPasswordController;

  const _PasswordDetailFields({
    required this.passwordController,
    required this.cPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Confirm Password
        CustomTextField(
          controller: cPasswordController,
          hintText: 'Подтвердите пароль',
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          validator: (confirmPw) => FormValidator.confirmPasswordValidator(
            confirmPw,
            passwordController.text,
          ),
        ),
      ],
    );
  }
}
