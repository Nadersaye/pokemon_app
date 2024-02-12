// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailsEntityAdapter extends TypeAdapter<PokemonDetailsEntity> {
  @override
  final int typeId = 1;

  @override
  PokemonDetailsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailsEntity(
      pokemonId: fields[0] as int,
      pokemonName: fields[1] as String,
      pokemonImageUrl: fields[2] as String,
      pokemonHeight: fields[3] as int,
      pokemonWeight: fields[4] as int,
      pokemonTypes: (fields[5] as List?)?.cast<String>(),
      hp: fields[6] as int,
      attack: fields[7] as int,
      defense: fields[8] as int,
      specialAttack: fields[9] as int,
      specialDefense: fields[10] as int,
      speed: fields[11] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailsEntity obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.pokemonId)
      ..writeByte(1)
      ..write(obj.pokemonName)
      ..writeByte(2)
      ..write(obj.pokemonImageUrl)
      ..writeByte(3)
      ..write(obj.pokemonHeight)
      ..writeByte(4)
      ..write(obj.pokemonWeight)
      ..writeByte(5)
      ..write(obj.pokemonTypes)
      ..writeByte(6)
      ..write(obj.hp)
      ..writeByte(7)
      ..write(obj.attack)
      ..writeByte(8)
      ..write(obj.defense)
      ..writeByte(9)
      ..write(obj.specialAttack)
      ..writeByte(10)
      ..write(obj.specialDefense)
      ..writeByte(11)
      ..write(obj.speed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
