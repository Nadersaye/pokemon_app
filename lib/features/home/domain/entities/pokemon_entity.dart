import 'package:hive/hive.dart';
part 'pokemon_entity.g.dart';

@HiveType(typeId: 0)
class PokemonEntity {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;

  const PokemonEntity({required this.name, required this.url});
}
