import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/di/di.config.dart';
import 'package:bookstore_thais/ui/screen/login/login_controller.dart';
import 'package:bookstore_thais/ui/screen/login/widget/action_bar_bookstore.dart';
import 'package:bookstore_thais/ui/screen/login/widget/text_input_login.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {

  var controller = getIt.get<LoginController>();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static const double defaultSpacing = 24.0;

  SignUpScreen({super.key});

  void _validateLocallyPasswords() {
    if (_formKey.currentState!.validate()) {
      // TODO MAKE API CALL AND ADVANCE
    }
  }

  @override
  Widget build(BuildContext context) {
    return ActionBarBookstore(
        titleActionBar: "Register",
        bodyScreen: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultSpacing, vertical: defaultSpacing),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: defaultSpacing * 2),
                          const Text(
                            "Please fill your details to signup.",
                            style: TextStyle(
                                color: AppColors.simpleBlack, fontSize: 16.0),
                          ),
                          const SizedBox(height: 32.0),
                          TextInputLogin(
                            hint: "Username",
                          ),
                          const SizedBox(height: defaultSpacing),
                          TextInputLogin(
                            hint: "Email",
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: defaultSpacing),
                          TextInputLogin(
                            hint: "Password",
                            keyboardType: TextInputType.number,
                            controller: passwordController,
                            validator: (value) {
                              return controller.validatePassword(value);
                            },
                            maxLength: 8,
                          ),
                          const SizedBox(height: defaultSpacing),
                          TextInputLogin(
                            hint: "Confirm Password",
                            controller: confirmPasswordController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value != passwordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                            maxLength: 8,
                          ),
                          const SizedBox(height: 32.0),
                          ElevatedButton(
                            onPressed: _validateLocallyPasswords,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.btnColors,
                                minimumSize: const Size(double.infinity, 48),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                            child: const Text(
                              'Register',
                              style: TextStyle(color: AppColors.primary),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(top: defaultSpacing),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: InkWell(
                                    onTap: () {
                                      context.router.maybePop();
                                    },
                                    child: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                              text: 'already a member?',
                                              style: TextStyle(
                                                  color: AppColors.defaultBlack)),
                                          TextSpan(
                                              text: ' SignIn',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.btnColors,
                                              ))
                                        ]))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
