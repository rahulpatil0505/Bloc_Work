import 'package:equatable/equatable.dart';

abstract class UserEvents extends Equatable {
  const UserEvents();
}

class Loadevent extends UserEvents {
  @override
  List<Object?> get props => [];
}

/// this file for creating LoadEvent same as state file
/// now forward to bloc file
