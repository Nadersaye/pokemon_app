import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';

abstract class FetchPokemonDetailsState {}

class FetchPokemonDetailsInitial extends FetchPokemonDetailsState {}

class FetchPokemonDetailsLoading extends FetchPokemonDetailsState {}

class FetchPokemonDetailsPaginationLoading extends FetchPokemonDetailsState {}

class FetchPokemonDetailsLoaded extends FetchPokemonDetailsState {
  final List<PokemonDetailsEntity> pokemons;
  FetchPokemonDetailsLoaded({required this.pokemons});
}

class FetchPokemonDetailsError extends FetchPokemonDetailsState {
  final String errorMessage;
  FetchPokemonDetailsError({required this.errorMessage});
}

class FetchPokemonDetailsPaginationError extends FetchPokemonDetailsState {
  final String errorMessage;
  FetchPokemonDetailsPaginationError({required this.errorMessage});
}
