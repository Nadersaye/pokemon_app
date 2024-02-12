import 'package:hive/hive.dart';
part 'pokemon_details_entity.g.dart';

@HiveType(typeId: 1)
class PokemonDetailsEntity {
  @HiveField(0)
  final int pokemonId;
  @HiveField(1)
  final String pokemonName;
  @HiveField(2)
  final String pokemonImageUrl;
  @HiveField(3)
  final int pokemonHeight;
  @HiveField(4)
  final int pokemonWeight;
  @HiveField(5)
  final List<String>? pokemonTypes;
  @HiveField(6)
  final int hp;
  @HiveField(7)
  final int attack;
  @HiveField(8)
  final int defense;
  @HiveField(9)
  final int specialAttack;
  @HiveField(10)
  final int specialDefense;
  @HiveField(11)
  final int speed;

  PokemonDetailsEntity({
    required this.pokemonId,
    required this.pokemonName,
    required this.pokemonImageUrl,
    required this.pokemonHeight,
    required this.pokemonWeight,
    this.pokemonTypes,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });
}
