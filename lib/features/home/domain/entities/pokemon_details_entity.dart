class PokemonDetailsEntity {
  final int pokemonId;
  final String pokemonname;
  final String pokemonimageUrl;
  final int pokemonheight;
  final int pokemonweight;
  final List<String>? pokemontypes;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  PokemonDetailsEntity({
    required this.pokemonId,
    required this.pokemonname,
    required this.pokemonimageUrl,
    required this.pokemonheight,
    required this.pokemonweight,
    this.pokemontypes,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });
}
