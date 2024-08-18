import 'package:bookstore_thais/bloc/login/password_toggle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../theme/colors.dart';

class TextInputLogin extends StatelessWidget {
  String? hint;
  bool isPassword = false;

  TextInputLogin({super.key, this.isPassword = false, this.hint});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordBloc, PasswordState>(
      builder: (context, state) {
        return TextField(
            obscureText: isPassword && state == PasswordState.hidden,
            keyboardType: isPassword ? TextInputType.number : TextInputType.text,
            maxLength: isPassword ? 8 : 60,
            decoration: InputDecoration(
              filled: true,
              counterText: '',
              suffixIcon: isPassword ? IconButton(
                  onPressed: () {
                    context.read<PasswordBloc>().add(PasswordEvent.changeToggleVisibility);
                  },
                  icon: Icon(
                      state == PasswordState.hidden ? Icons.visibility : Icons.visibility_off)) : null,
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
    );
  }
}
