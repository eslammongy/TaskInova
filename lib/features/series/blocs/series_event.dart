import 'package:equatable/equatable.dart';

abstract class SeriesEvent extends Equatable {
  const SeriesEvent();

  @override
  List<Object> get props => [];
}

class FetchSeries extends SeriesEvent {
  const FetchSeries();
}
