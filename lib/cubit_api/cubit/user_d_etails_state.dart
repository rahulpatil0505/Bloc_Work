// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_d_etails_cubit.dart';

sealed class UserDEtailsState extends Equatable {
  const UserDEtailsState();

  @override
  List<Object> get props => [];
}

final class UserDEtailsInitial extends UserDEtailsState {}

class UserLoading extends UserDEtailsState {}

class UserLoded extends UserDEtailsState {
  final UserDetails userDetails;
  const UserLoded({
    required this.userDetails,
  });
}

class UserError extends UserDEtailsState {
  String error;
  UserError(
    this.error,
  );
}
