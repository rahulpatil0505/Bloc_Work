part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

final class AuthLoginRequeste extends AuthenticationEvent {
  final String email;
  final String password;

  AuthLoginRequeste({required this.email, required this.password});
}
