import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/bloc/login/password_toggle_bloc.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:bookstore_thais/ui/screen/login/widget/action_bar_bookstore.dart';
import 'package:bookstore_thais/ui/screen/login/widget/text_input_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  static const double defaultSpacing = 24.0;

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionBarBookstore(
        titleActionBar: "Get Started",
        bodyScreen: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: BlocProvider(
                  create: (_) => PasswordBloc(),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: defaultSpacing, vertical: defaultSpacing),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: defaultSpacing * 2),
                        const Text(
                          "Please fill your details to login.",
                          style: TextStyle(
                              color: AppColors.simpleBlack, fontSize: 16.0),
                        ),
                        const SizedBox(height: 32.0),
                        TextInputLogin(
                          hint: "Username/Email",
                        ),
                        const SizedBox(height: defaultSpacing),
                        BlocBuilder<PasswordBloc, PasswordState>(
                          builder: (context, state) {
                            return TextInputLogin(
                              hint: "Password",
                              passwordIsHidden: state == PasswordState.hidden,
                              isPassword: true,
                              maxLength: 8,
                              keyboardType: TextInputType.number,
                              eyeClick: () {
                                context.read<PasswordBloc>().add(PasswordEvent.changeToggleVisibility);
                              },
                            );
                          }
                        ),
                        const SizedBox(height: defaultSpacing),
                        ElevatedButton(
                          onPressed: () {
                            context.router.push(const HomeRoute());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.btnColors,
                              minimumSize: const Size(double.infinity, 48),
                              // Largura infinita, altura de 50
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(color: AppColors.primary),
                          ),
                        ),
                        const SizedBox(height: defaultSpacing),
                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                              onTap: () {
                                // TODO REALIZAR AÇÃO
                              },
                              child: RichText(
                                  text: const TextSpan(
                                    text: 'forgot password?',
                                    style: TextStyle(
                                        color: AppColors.defaultBlack,
                                        decoration: TextDecoration.underline),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: defaultSpacing),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                  onTap: () {
                                    context.router.push(SignUpRoute());
                                  },
                                  child: RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'new member?',
                                            style: TextStyle(
                                                color: AppColors.defaultBlack)),
                                        TextSpan(
                                            text: ' register',
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
        })
    );
  }
}
