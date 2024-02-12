import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokemon_app/core/utils/constants.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_entity.dart';

abstract class BaseHomeLocalDataSource {
  List<PokemonEntity> fetchPokemons({int pageNumber = 0});
  List<PokemonDetailsEntity> fetchPokemonDetails({int pageNumber = 0});
}

class HomeLocalDataSource implements BaseHomeLocalDataSource {
  @override
  List<PokemonEntity> fetchPokemons({int pageNumber = 0}) {
    int startIndex = pageNumber * kpokemonApiLimit;
    int endIndex = (pageNumber + 1) * kpokemonApiLimit;
    var pokemonsBox = Hive.box<PokemonEntity>(kPokemonsBox);
    int length = pokemonsBox.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return pokemonsBox.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<PokemonDetailsEntity> fetchPokemonDetails({int pageNumber = 0}) {
    int startIndex = pageNumber * kpokemonApiLimit;
    int endIndex = (pageNumber + 1) * kpokemonApiLimit;
    var pokemonDetailsBox = Hive.box<PokemonDetailsEntity>(kPokemonDetailsBox);
    int length = pokemonDetailsBox.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return pokemonDetailsBox.values.toList().sublist(startIndex, endIndex);
  }
}
