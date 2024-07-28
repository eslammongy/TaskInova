import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inove/core/data/fake_data.dart';
import 'package:inove/core/api/api_services.dart';

void main() {
  late APIService apiService;

  setUp(() {
    apiService = APIService();
  });

  group('APIService', () {
    test('getSeriesInfo returns response on success', () async {
      final response = await apiService.getSeriesInfo();

      expect(response.data, fakeSeries);
      expect(response.statusCode, 200);
    });

    test('getSeriesInfo throws error on failure', () async {
      expect(() async => await apiService.getSeriesInfo(),
          throwsA(isA<DioException>()));
    });
  });
}
