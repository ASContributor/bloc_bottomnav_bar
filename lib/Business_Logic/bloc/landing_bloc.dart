import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingInitial(tabindex: 0)) {
    on<LandingEvent>((event, emit) {
      if (event is TabChange) {
        emit(LandingInitial(tabindex: event.tabIndex));
      }
    });
  }
}
