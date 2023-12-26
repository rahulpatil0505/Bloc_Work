import 'package:equatable/equatable.dart';

abstract class PopEvent extends Equatable {
  Popevent();

  @override
  List<Object> get props => [];
}

class GetPopList extends PopEvent {
  @override
  Popevent() {
    // TODO: implement Popevent
    throw UnimplementedError();
  }
}
