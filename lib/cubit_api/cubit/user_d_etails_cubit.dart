import 'package:bloc/bloc.dart';
import 'package:blockdemoapi/cubit_api/apiServvices/apiService.dart';
import 'package:blockdemoapi/cubit_api/models/Userdetails.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'user_d_etails_state.dart';

class UserDEtailsCubit extends Cubit<UserDEtailsState> {
  UserDEtailsCubit() : super(UserDEtailsInitial());

  Getapi() {
    emit(UserLoading());
    ApiServices.Getapi().then((value) {
      emit(UserLoded(userDetails: value!));
    }).onError((error, stackTrace) {
      print(error.toString());
      emit(UserError(error.toString()));
    });
  }
}
