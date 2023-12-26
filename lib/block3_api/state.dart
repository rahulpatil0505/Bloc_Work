class DataState {
  final bool isLoading;
  final List<Map<String, dynamic>> data;
  final String error;

  DataState({
    required this.isLoading,
    required this.data,
    required this.error,
  });

  factory DataState.initial() =>
      DataState(isLoading: false, data: [], error: '');

  factory DataState.loading() =>
      DataState(isLoading: true, data: [], error: '');

  factory DataState.success(List<Map<String, dynamic>> data) =>
      DataState(isLoading: false, data: data, error: '');

  factory DataState.failure(String error) =>
      DataState(isLoading: false, error: error, data: []);
}
