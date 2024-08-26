import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/theme/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../navigation/router.config.gr.dart';
import '../../../theme/colors.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    BookStoreAssets.welcomeLogo,
                    Center(
                      child:Container(
                          margin: const EdgeInsets.only(top: 68.4),
                          child: BookStoreAssets.appLogo),
                    ),
                    Center(child:Container(
                        margin: const EdgeInsets.only(top: 280.17, left: 20, right: 20),
                        child: const Text("Read more and stress less with our online book shopping app. Shop from anywhere you are and discover titles that you love.!")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:  Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.router.push(const LoginRoute());
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
                            const SizedBox(height: 14),
                            InkWell(
                              onTap: () {
                                context.router.push(SignUpRoute());
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(color: AppColors.btnColors, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
