import 'package:dartz/dartz.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app/features/home/domain/repos/base_home_repo.dart';

import '../data sources/home_local_data_source.dart';
import '../data sources/home_remote_data_source.dart';

class HomeRepo implements BaseHomeRepo {
  final BaseHomeLocalDataSource localDataSource;
  final BaseHomeRemoteDataSource remoteDataSource;

  HomeRepo({required this.localDataSource, required this.remoteDataSource});
  @override
  Future<Either<String, List<PokemonEntity>>> fetchPokemons(
      int pageNumber) async {
    try {
      List<PokemonEntity> pokemons = [];
      pokemons = localDataSource.fetchPokemons(pageNumber: pageNumber);
      if (pokemons.isNotEmpty) {
        return Right(pokemons);
      }
      pokemons = await remoteDataSource.fetchPokemons(pageNumber);
      return Right(pokemons);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<PokemonDetailsEntity>>> fetchPokemonDetails(
      List<PokemonEntity> pokemons, int pageNumber) async {
    try {
      List<PokemonDetailsEntity> pokemonsDetails = [];
      pokemonsDetails =
          localDataSource.fetchPokemonDetails(pageNumber: pageNumber);
      if (pokemonsDetails.isNotEmpty) {
        return Right(pokemonsDetails);
      }
      pokemonsDetails = await remoteDataSource.fetchPokemonDetails(pokemons);
      return Right(pokemonsDetails);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
