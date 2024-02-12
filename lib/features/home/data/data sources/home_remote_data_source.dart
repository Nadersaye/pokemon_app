import 'package:pokemon_app/core/functions/save_pokemon_details.dart';
import 'package:pokemon_app/core/utils/api_service.dart';
import 'package:pokemon_app/core/utils/constants.dart';
import 'package:pokemon_app/features/home/data/models/pokemons/pokemon.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_entity.dart';
import '../../../../core/functions/save_pokemons.dart';
import '../models/pokemon_details/pokemon_details.dart';

abstract class BaseHomeRemoteDataSource {
  Future<List<PokemonEntity>> fetchPokemons(int pageNumber);
  Future<List<PokemonDetailsEntity>> fetchPokemonDetails(
      List<PokemonEntity> pokemons);
}

class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSource({required this.apiService});
  @override
  Future<List<PokemonEntity>> fetchPokemons(int pageNumber) async {
    final response = await apiService.get(
        'pokemon?limit=$kpokemonApiLimit&offset=${pageNumber * kpokemonApiLimit}');
    List<PokemonEntity> pokemons = _getPokemonsList(response);
    savePokemonsData(pokemons, kPokemonsBox);
    return pokemons;
  }

  @override
  Future<List<PokemonDetailsEntity>> fetchPokemonDetails(
      List<PokemonEntity> pokemons) async {
    List<PokemonDetailsEntity> pokemonsDetails = [];
    await _fetchPokemonDetailsBody(pokemons, pokemonsDetails);
    return pokemonsDetails;
  }

  Future<void> _fetchPokemonDetailsBody(List<PokemonEntity> pokemons,
      List<PokemonDetailsEntity> pokemonsDetails) async {
    for (var pokemonsItem in pokemons) {
      final responce = await apiService.getPkemonDetails(pokemonsItem.url);
      PokemonDetailsEntity pokemon = _getPokemonDetails(responce);
      savePokemonDetailsData(pokemon, kPokemonDetailsBox);
      pokemonsDetails.add(pokemon);
    }
  }

  PokemonDetailsEntity _getPokemonDetails(Map<String, dynamic> data) {
    return PokemonDetails.fromJson(data);
  }

  List<PokemonEntity> _getPokemonsList(Map<String, dynamic> data) {
    List<PokemonEntity> pokemons = [];
    for (var pokemonMap in data['results']) {
      pokemons.add(Pokemon.fromJson(pokemonMap));
    }
    return pokemons;
  }
}
