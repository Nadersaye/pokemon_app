import '../../../domain/entities/pokemon_entity.dart';

class Pokemon extends PokemonEntity {
  const Pokemon({
    required super.name,
    required super.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        name: json['name'] as String,
        url: json['url'] as String,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
