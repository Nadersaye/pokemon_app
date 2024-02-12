import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_app/features/home/domain/use_cases/fetch_pokemons_details_use_case.dart';
import '../../features/home/data/data sources/home_local_data_source.dart';
import '../../features/home/data/data sources/home_remote_data_source.dart';
import '../../features/home/data/repos/home_repo.dart';
import '../../features/home/domain/repos/base_home_repo.dart';
import 'api_service.dart';

class ServiceLocator {
  static final sl = GetIt.instance;
  static void init() {
    //Api service
    sl.registerLazySingleton(() => ApiService(dio: Dio()));

    //Use cases
    sl.registerLazySingleton(
        () => FetchPokemonsDetailsUseCase(baseHomeRepo: sl<BaseHomeRepo>()));

    //Data sources
    sl.registerLazySingleton<BaseHomeRemoteDataSource>(
        () => HomeRemoteDataSource(apiService: sl()));
    sl.registerLazySingleton<BaseHomeLocalDataSource>(
        () => HomeLocalDataSource());

    //Repositories
    sl.registerLazySingleton<BaseHomeRepo>(() => HomeRepo(
        localDataSource: sl<BaseHomeLocalDataSource>(),
        remoteDataSource: sl<BaseHomeRemoteDataSource>()));
  }
}
