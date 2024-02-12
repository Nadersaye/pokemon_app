import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_entity.dart';

savePokemonsData(List<PokemonEntity> pokemons, String boxName) {
  Box<PokemonEntity> box = Hive.box<PokemonEntity>(boxName);
  box.addAll(pokemons);
}
