import 'dart:io';
import 'package:dio/dio.dart';
import 'package:inove/core/api/api_services.dart';
import 'package:inove/core/utils/data_state.dart';
import 'package:inove/features/series/data/models/series_model.dart';
import 'package:inove/features/series/data/repositories/series_repository.dart';

class SeriesRepositoryImpl implements SeriesRepository {
  final APIService apiService;

  SeriesRepositoryImpl({required this.apiService});
  @override
  Future<DataState<Series>> getSeries() async {
    try {
      final response = await apiService.getSeriesInfo();
      if (response.statusCode == HttpStatus.ok) {
        final series = Series.fromJson(response.data);
        return DataSuccess(series);
      } else {
        return DataFailed(DioException(
            error: response.statusMessage,
            response: response,
            type: DioExceptionType.badResponse,
            requestOptions: response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
