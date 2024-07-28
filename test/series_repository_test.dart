import 'package:flutter_test/flutter_test.dart';
import 'package:inove/core/data/fake_data.dart';
import 'package:inove/core/api/api_services.dart';
import 'package:inove/core/utils/data_state.dart';
import 'package:inove/features/series/data/models/series_model.dart';
import 'package:inove/features/series/data/repositories/series_repository_impl.dart';

void main() {
  late SeriesRepositoryImpl seriesRepository;
  late APIService apiService;

  setUp(() {
    apiService = APIService();
    seriesRepository = SeriesRepositoryImpl(apiService: apiService);
  });

  group('SeriesRepositoryImpl', () {
    test('getSeries returns DataSuccess on successful response', () async {
      final result = await seriesRepository.getSeries();
      final expectedSeries = Series.fromJson(fakeSeries);
      expect(result, isA<DataSuccess<Series>>());
      expect((result as DataSuccess<Series>).data, expectedSeries);
    });

    test('getSeries returns DataFailed on error response', () async {
      final result = await seriesRepository.getSeries();

      expect(result, isA<DataFailed<Series>>());
    });
  });
}
