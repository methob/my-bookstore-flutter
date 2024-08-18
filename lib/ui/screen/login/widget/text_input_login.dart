import 'package:flutter/material.dart';
import '../../../../theme/colors.dart';

class TextInputLogin extends StatelessWidget {

  String? hint;
  bool isPassword;
  int maxLength;
  TextEditingController? controller;
  TextInputType keyboardType;
  Function? eyeClick;
  FormFieldValidator<String>? validator;
  bool passwordIsHidden;

  TextInputLogin({
    super.key,
    this.isPassword = false,
    this.maxLength = 60,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.passwordIsHidden = true,
    this.hint,
    this.eyeClick
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isPassword && passwordIsHidden,
        keyboardType: keyboardType,
        maxLength: maxLength,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          counterText: '',
          suffixIcon: isPassword ? IconButton(
              onPressed: () {
                eyeClick?.call();
              },
              icon: Icon(
                  passwordIsHidden ? Icons.visibility : Icons.visibility_off)) : null,
          fillColor: AppColors.textFieldColors,
          hintText: hint,
          hintStyle:
              const TextStyle(fontSize: 14, color: AppColors.simpleBlack),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(color: AppColors.btnColors, width: 2.0)),
        ));
  }
}
