import 'package:bloc/bloc.dart';
import 'package:blockdemoapi/block_api/event.dart';
import 'package:blockdemoapi/block_api/state.dart';

import 'apis/api.dart';

class UserBloc extends Bloc<UserEvents, UserStates> {
  final UserData _userData;

  UserBloc(this._userData) : super(UserLoading()) {
    on<Loadevent>((event, emit) async {
      emit(UserLoading());
      try {
        final userss = await _userData.getusers();
        emit(UserLoded(userss));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}

/// in bloc file first extend class with bloc<event , states>
/// call api class for geting data
/// define functions for geting response from api ...
