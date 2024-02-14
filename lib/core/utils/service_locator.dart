import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/home/domain/use_cases/fetch_pokemons_details_use_case.dart';
import '../../features/home/data/data sources/home_local_data_source.dart';
import '../../features/home/data/data sources/home_remote_data_source.dart';
import '../../features/home/data/repos/home_repo.dart';
import '../../features/home/domain/repos/base_home_repo.dart';
import 'api_service.dart';

//Api service
final apiServiceProvider =
    Provider<ApiService>((ref) => ApiService(dio: Dio()));

//Data sources
final homeRemoteDataSourceProvider = Provider<BaseHomeRemoteDataSource>(
    (ref) => HomeRemoteDataSource(apiService: ref.watch(apiServiceProvider)));
final homeLocalDataSourceProvider =
    Provider<BaseHomeLocalDataSource>((ref) => HomeLocalDataSource());

//Repositories
final homeRepoProvider = Provider<BaseHomeRepo>((ref) => HomeRepo(
      localDataSource: ref.watch(homeLocalDataSourceProvider),
      remoteDataSource: ref.watch(homeRemoteDataSourceProvider),
    ));

//Use cases
final fetchPokemonsDetailsUseCaseProvider =
    Provider<FetchPokemonsDetailsUseCase>((ref) =>
        FetchPokemonsDetailsUseCase(baseHomeRepo: ref.watch(homeRepoProvider)));
