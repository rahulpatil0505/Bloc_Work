part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthSucess extends AuthenticationState {
  final String uid;

  AuthSucess({required this.uid});
}

final class AuthFail extends AuthenticationState {
  final String error;

  AuthFail(this.error);
}

final class AuthLoding extends AuthenticationState {}
