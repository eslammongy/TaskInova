import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inove/core/utils/data_state.dart';
import 'package:inove/features/series/blocs/series_event.dart';
import 'package:inove/features/series/blocs/series_state.dart';
import 'package:inove/features/series/data/repositories/series_repository.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final SeriesRepository seriesRepository;

  SeriesBloc({required this.seriesRepository}) : super(SeriesInitialState()) {
    on<FetchSeries>((event, emit) async {
      emit(SeriesLoadingState());
      final dataState = await seriesRepository.getSeries();

      if (dataState is DataSuccess && dataState.data != null) {
        final series = dataState.data!;
        emit(SeriesLoadedState(series: series));
      }

      if (dataState is DataFailed) {
        emit(SeriesErrorState(message: dataState.exception?.message ?? ''));
      }
    });
  }
}
