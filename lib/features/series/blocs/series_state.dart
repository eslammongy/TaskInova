import 'package:equatable/equatable.dart';
import 'package:inove/features/series/data/models/series_model.dart';

abstract class SeriesState extends Equatable {
  const SeriesState();

  @override
  List<Object> get props => [];
}

class SeriesInitialState extends SeriesState {}

class SeriesLoadingState extends SeriesState {}

class SeriesLoadedState extends SeriesState {
  final Series series;

  const SeriesLoadedState({required this.series});

  @override
  List<Object> get props => [series];
}

class SeriesErrorState extends SeriesState {
  final String message;

  const SeriesErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
