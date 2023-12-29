import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthLoginRequeste>(_onAuthLoginReeuest);
    on<AuthlogoutRequest>(_onAuthLogOutRequest);
  }

  void _onAuthLoginReeuest(
      AuthLoginRequeste event, Emitter<AuthenticationState> emit) async {
    emit(AuthLoding());
    try {
      final email = event.email;
      final password = event.password;

      if (password.length < 6) {
        return emit(AuthFail("Password is greter then 6 digits"));
      }
      await Future.delayed(const Duration(seconds: 2), () {
        return emit(AuthSucess(uid: "id:- $email \nPassword:- $password"));
      });
    } catch (e) {
      return emit(AuthFail(e.toString()));
    }
  }

  void _onAuthLogOutRequest(
      AuthlogoutRequest event, Emitter<AuthenticationState> emit) async {
    emit(AuthLoding());
    try {
      await Future.delayed(const Duration(seconds: 1));
      return emit(AuthenticationInitial());
    } catch (e) {
      emit(AuthFail(e.toString()));
    }
  }
}
