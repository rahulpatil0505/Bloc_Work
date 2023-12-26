import 'package:blockdemoapi/block_api/apis/model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserStates extends Equatable {}

class UserLoading extends UserStates {
  @override
  List<Object?> get props => [];
  // use list object for create list
  // props is use for override methods in Equatable
}

class UserLoded extends UserStates {
  final List<Data> users;
  UserLoded(this.users);
  @override
  List<Object?> get props => [users];
}

class UserError extends UserStates {
  final String error;
  UserError(this.error);
  @override
  List<Object?> get props => [error];
}

/// in state file first creare one abstrct class
/// then create class as requrement
/// in this project we create only 3 class one for loading, second for lodeddata , and last one for error.
/// afer create all this calss forwat to new file name with event..

