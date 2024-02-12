import 'package:dartz/dartz.dart';

import '../entities/pokemon_details_entity.dart';
import '../entities/pokemon_entity.dart';

abstract class BaseHomeRepo {
  Future<Either<String, List<PokemonEntity>>> fetchPokemons(int pageNumber);
  Future<Either<String, List<PokemonDetailsEntity>>> fetchPokemonDetails(
      List<PokemonEntity> pokemons, int pageNumber);
}
