import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'sprites.dart';
import 'parent_stat.dart';
import 'parent_type.dart';

class PokemonDetails extends PokemonDetailsEntity {
  int? height;
  int id;
  String? name;
  Sprites? sprites;
  List<ParentStat>? stats;
  List<ParentType>? types;
  int? weight;

  PokemonDetails({
    this.height,
    required this.id,
    this.name,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  }) : super(
            pokemonId: id,
            pokemonname: name ?? 'un known',
            pokemonimageUrl: sprites?.other?.home?.frontDefault ?? '',
            pokemonheight: height ?? 0,
            pokemonweight: weight ?? 0,
            pokemontypes: types?.map((e) => e.type?.name ?? '').toList() ?? [],
            hp: stats?.first.baseStat ?? 0,
            attack: stats?.elementAt(1).baseStat ?? 0,
            defense: stats?.elementAt(2).baseStat ?? 0,
            specialAttack: stats?.elementAt(3).baseStat ?? 0,
            specialDefense: stats?.elementAt(4).baseStat ?? 0,
            speed: stats?.elementAt(5).baseStat ?? 0);

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    return PokemonDetails(
      height: json['height'] as int?,
      id: json['id'] as int,
      name: json['name'] as String?,
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => ParentStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<ParentType>?)
          ?.map((e) => ParentType.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'height': height,
        'id': id,
        'name': name,
        'sprites': sprites?.toJson(),
        'stats': stats?.map((e) => e.toJson()).toList(),
        'types': types?.map((e) => e.toJson()).toList(),
        'weight': weight,
      };
}
