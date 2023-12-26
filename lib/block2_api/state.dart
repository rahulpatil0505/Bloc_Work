import 'package:equatable/equatable.dart';

import 'api/model.dart';

abstract class Popstate extends Equatable {
  const Popstate();

  @override
  List<Object?> get props => [];
}

class PopInital extends Popstate {}

class PopLoading extends Popstate {}

class PopLoaded extends Popstate {
  final PopulationData populationData;

  const PopLoaded(this.populationData);
}

class PopError extends Popstate {
  final String? message;

  const PopError(this.message);
}
