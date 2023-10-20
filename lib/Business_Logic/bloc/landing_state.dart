part of 'landing_bloc.dart';

@immutable
sealed class LandingState {
  final int tabindex;

  LandingState({required this.tabindex});
}

final class LandingInitial extends LandingState {
  LandingInitial({required super.tabindex});
}
