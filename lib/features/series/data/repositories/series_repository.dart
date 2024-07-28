import 'package:inove/core/utils/data_state.dart';
import 'package:inove/features/series/data/models/series_model.dart';

abstract class SeriesRepository {
  Future<DataState<Series>> getSeries();
}
