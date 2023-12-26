import 'package:blockdemoapi/block2_api/api/apiReopsitory.dart';
import 'package:blockdemoapi/block2_api/event.dart';
import 'package:blockdemoapi/block2_api/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopBloc extends Bloc<PopEvent, Popstate> {
  PopBloc() : super(PopInital()) {
    final ApiRepositry _apirepositry = ApiRepositry();

    on<GetPopList>((event, emit) async {
      try {
        emit(PopLoading());
        final mlist = await _apirepositry.fetchPopList();
        emit(PopLoaded(mlist));
      } catch (e) {
        print(e);
      }
    });
  }
}
