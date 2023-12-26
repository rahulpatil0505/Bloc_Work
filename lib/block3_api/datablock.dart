import 'dart:async';

import 'apiservice.dart';

import 'event.dart';
import 'state.dart';

class DataBloc {
  final ApiService _apiService = ApiService();
  final _dataStateController = StreamController<DataState>();

  Stream<DataState> get dataStream => _dataStateController.stream;

  void mapEventToState(DataEvent event) async {
    _dataStateController.sink.add(DataState.loading());

    try {
      if (event is FetchData) {
        final data = await _apiService.fetchData();
        _dataStateController.sink.add(DataState.success(data));
      }
    } catch (e) {
      _dataStateController.sink.add(DataState.failure(e.toString()));
    }
  }

  void dispose() {
    _dataStateController.close();
  }
}
