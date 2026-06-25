import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_event.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_state.dart';

class AuthenticationBlocBloc extends Bloc<AuthenticationBlocEvent, Authtabstate> {
  AuthenticationBlocBloc() : super(Authtabstate(selectedtab: AuthTab.login)) {
    on<swithtologin>((event, emit) {
      emit(state.copyWith(selectedtab: AuthTab.login));
    });
    on<swithtoSignup>((event, emit) {
      emit(state.copyWith(selectedtab: AuthTab.signup));
    });
  }
}
