
import 'package:flutter_bloc/flutter_bloc.dart';

enum PasswordEvent { changeToggleVisibility }
enum PasswordState { hidden, visible }

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {

  PasswordBloc() : super(PasswordState.hidden) {
    on<PasswordEvent>(_onToggleVisibility);
  }

  void _onToggleVisibility(PasswordEvent event, Emitter<PasswordState> emit) {
    if (event == PasswordEvent.changeToggleVisibility) {
      emit(state == PasswordState.hidden ? PasswordState.visible : PasswordState.hidden);
    }
  }
}
