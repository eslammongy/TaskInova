import 'package:dio/dio.dart';
import 'package:inove/core/data/fake_data.dart';

class APIService {
  APIService();

  Future<Response> getSeriesInfo() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final Response response = Response(
          data: fakeSeries, requestOptions: RequestOptions(), statusCode: 200);
      return response;
    } catch (error) {
      rethrow;
    }
  }
}
