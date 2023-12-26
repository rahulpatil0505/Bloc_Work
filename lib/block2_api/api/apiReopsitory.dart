import 'apiProvider.dart';
import 'model.dart';

class ApiRepositry {
  final _prov = ApiProvider();

  Future<PopulationData> fetchPopList() {
    return _prov.fetchpopList();
  }
}

class Networkerror extends Error {}
