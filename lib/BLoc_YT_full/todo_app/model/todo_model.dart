// ignore_for_file: public_member_api_docs, sort_constructors_first
class TOdoModel {
  final String name;
  final DateTime createdAt;

  TOdoModel({required this.name, required this.createdAt});

  @override
  String toString() => 'TOdoModel(name: $name, createdAt: $createdAt)';
}
