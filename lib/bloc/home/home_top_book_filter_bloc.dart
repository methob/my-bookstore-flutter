

import 'package:bloc/bloc.dart';

enum HomeBookEvent { filterByWeek, filterByMonth, filterByYear }
enum HomeBookState { week, month, year  }

class HomeTopBookFilterBloc extends Bloc<HomeBookEvent, HomeBookState>{

  HomeTopBookFilterBloc(): super (HomeBookState.week) {
    on<HomeBookEvent>(_filter);
  }

  void _filter(HomeBookEvent event, Emitter<HomeBookState> emit) {
    switch(event) {
      case HomeBookEvent.filterByWeek:
        emit(HomeBookState.week);
        break;
      case HomeBookEvent.filterByMonth:
        emit(HomeBookState.month);
        break;
      case HomeBookEvent.filterByYear:
        emit(HomeBookState.year);
        break;
      default:
        emit(HomeBookState.week);
        break;
    }
  }
}