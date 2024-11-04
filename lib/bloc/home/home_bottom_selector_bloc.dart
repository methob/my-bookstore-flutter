import 'package:bloc/bloc.dart';

class HomeBottomState {
  final HomeScreenEnum homeScreen;
  HomeBottomState(this.homeScreen);
}

enum HomeScreenEnum {
  home(0),
  category(1),
  cart(2),
  account(3),
  detail(0);

  final int selectedIndex;
  const HomeScreenEnum(this.selectedIndex);
}

class HomeBottomSelectorEvent {
  final HomeScreenEnum homeScreen;

  HomeBottomSelectorEvent({required this.homeScreen});
}

class HomeBottomSelectorBloc extends Bloc<HomeBottomSelectorEvent, HomeBottomState>{

  HomeBottomSelectorBloc(): super ( HomeBottomState(HomeScreenEnum.home)) {
    on<HomeBottomSelectorEvent>(_filter);
  }

  void _filter(HomeBottomSelectorEvent event, Emitter<HomeBottomState> emit) {
    emit(HomeBottomState(event.homeScreen));
  }
}