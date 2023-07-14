import 'package:e_ti_app/helper/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Helpers
import '../../../helper/extensions/context_extensions.dart';
import '../../../helper/utils/assets_helper.dart';
import '../../../helper/utils/constants.dart';
import '../../../helper/utils/form_validator.dart';

//Providers
import '../../../providers/all_providers.dart';

//States
import '../../../providers/states/auth_state.dart';
import '../../../routes/app_router.dart';

//Routing
import '../../../routes/route.dart';

//Widgets
import '../../widgets/common/custom_dialog.dart';
import '../../widgets/common/custom_text_button.dart';
import '../../widgets/common/custom_textfield.dart';
import '../../widgets/common/rounded_bottom_container.dart';
import '../../widgets/common/scrollable_column.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    ref.listen<AuthState>(
      authProvider,
      (_, authState) => authState.maybeWhen(
        authenticated: (_) {
          emailController.clear();
          passwordController.clear();
          AppRouter.popUntilRoot();
          return null;
        },
        failed: (reason) async {
          await showDialog<bool>(
            context: context,
            barrierColor: Constants.barrierColor.withOpacity(0.75),
            builder: (ctx) => CustomDialog.alert(
              title: 'Не удалось войти',
              body: reason,
              buttonText: 'Повторить',
            ),
          );
          return null;
        },
        orElse: () {},
      ),
    );
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ScrollableColumn(children: [
          //Input card
          Form(
            key: formKey,
            child: RoundedBottomContainer(
              padding: const EdgeInsets.fromLTRB(25.0, 28, 25.0, 20),
              children: [
                const SizedBox(height: 60),
                const SizedBox(
                  child: CircleAvatar(
                    radius: 120.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 120.0,
                      backgroundImage: AssetImage(AssetsHelper.personLogo),
                    ),
                  ),
                ),

                const SizedBox(height: 60),

                //Email
                CustomTextField(
                  width: double.infinity,
                  height: double.infinity,
                  controller: emailController,
                  // floatingText: 'Электронная почта',
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: FormValidator.emailValidator,
                ),

                const SizedBox(height: 25),

                //Password
                CustomTextField(
                  controller: passwordController,
                  // floatingText: 'Пароль',
                  hintText: 'Пароль',
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  validator: FormValidator.passwordValidator,
                ),

                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    AppRouter.pushNamed(Routes.ForgotPasswordScreenRoute);
                  },
                  child: Text(
                    'Забыли пароль?',
                    style: context.headline3.copyWith(
                      fontSize: 17,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                //Login button
                CustomTextButton.gradient(
                  width: double.infinity,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      ref.read(authProvider.notifier).login(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                    }
                  },
                  gradient: Constants.buttonGradientOrange,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final authState = ref.watch(authProvider);
                      return authState.maybeWhen(
                        authenticating: () => const Center(
                          child: SpinKitRing(
                            color: Colors.white,
                            size: 30,
                            lineWidth: 4,
                            duration: Duration(milliseconds: 1100),
                          ),
                        ),
                        orElse: () => child!,
                      );
                    },
                    child: Center(
                      child: Text('Вход',
                          style: UtilTextStyles.customTextButtonStyle),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
