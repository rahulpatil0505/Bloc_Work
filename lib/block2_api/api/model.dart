class PopulationData {
  final String idNation;
  final String nation;
  final int idYear;
  final String year;
  final int population;
  final String slugNation;

  PopulationData({
    required this.idNation,
    required this.nation,
    required this.idYear,
    required this.year,
    required this.population,
    required this.slugNation,
  });

  factory PopulationData.fromJson(Map<String, dynamic> json) {
    return PopulationData(
      idNation: json['ID Nation'] ?? '',
      nation: json['Nation'] ?? '',
      idYear: json['ID Year'] ?? 0,
      year: json['Year'] ?? '',
      population: json['Population'] ?? 0,
      slugNation: json['Slug Nation'] ?? '',
    );
  }
}

class DataSource {
  final List<PopulationData> data;
  final List<Map<String, dynamic>> source;

  DataSource({
    required this.data,
    required this.source,
  });

  factory DataSource.fromJson(Map<String, dynamic> json) {
    List<PopulationData> dataList = <PopulationData>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        dataList.add(PopulationData.fromJson(v));
      });
    }

    List<Map<String, dynamic>> sourceList = <Map<String, dynamic>>[];
    if (json['source'] != null) {
      json['source'].forEach((v) {
        sourceList.add(v);
      });
    }

    return DataSource(
      data: dataList,
      source: sourceList,
    );
  }
}
