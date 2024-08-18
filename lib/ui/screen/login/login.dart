import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/bloc/login/password_toggle_bloc.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:bookstore_thais/ui/screen/login/widget/text_input_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  static const double defaultSpacing = 24.0;

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primary,
            leading: BackButton(
              color: Colors.black,
              onPressed: () {
                // TODO REALIZAR AÇÃO
              },
            ),
            title: const Text(
              "Get Started",
              style: TextStyle(
                  color: AppColors.simpleBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            ),
            centerTitle: true,
          ),
          body: LayoutBuilder(builder: (context, constraints) {
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
                          const SizedBox(height: defaultSpacing * 3),
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
                          TextInputLogin(
                            hint: "Password",
                            isPassword: true,
                          ),
                          const SizedBox(height: defaultSpacing),
                          ElevatedButton(
                            onPressed: () {
                              // TODO REALIZAR AÇÃO
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
                                      context.router.push(const SignUpRoute());
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
          })),
    );
  }
}
