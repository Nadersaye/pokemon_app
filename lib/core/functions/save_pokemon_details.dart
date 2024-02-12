import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';

savePokemonDetailsData(PokemonDetailsEntity pokemon, String boxName) {
  Box<PokemonDetailsEntity> box = Hive.box<PokemonDetailsEntity>(boxName);
  box.add(pokemon);
}
