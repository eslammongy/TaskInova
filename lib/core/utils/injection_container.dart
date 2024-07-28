import 'package:get_it/get_it.dart';
import 'package:inove/core/api/api_services.dart';
import 'package:inove/features/series/blocs/series_bloc.dart';
import 'package:inove/features/series/data/repositories/series_repository.dart';
import 'package:inove/features/series/data/repositories/series_repository_impl.dart';

final getIt = GetIt.instance;
Future<void> initializeDependencies() async {
  final apiServices = APIService();
  getIt.registerSingleton(apiServices);

  getIt.registerSingleton<SeriesRepository>(
      SeriesRepositoryImpl(apiService: getIt()));

  getIt
      .registerFactory<SeriesBloc>(() => SeriesBloc(seriesRepository: getIt()));
}
