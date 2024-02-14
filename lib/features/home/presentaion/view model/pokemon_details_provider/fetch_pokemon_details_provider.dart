import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/core/utils/service_locator.dart';
import '../../../domain/use_cases/fetch_pokemons_details_use_case.dart';
import 'fetch_pokemon_details_states.dart';

final fetchPokemonDetailsProvider = StateNotifierProvider.autoDispose<
        FetchPokemonDetailsNotifier, FetchPokemonDetailsState>(
    (ref) => FetchPokemonDetailsNotifier(
        ref.watch(fetchPokemonsDetailsUseCaseProvider)));

class FetchPokemonDetailsNotifier
    extends StateNotifier<FetchPokemonDetailsState> {
  final FetchPokemonsDetailsUseCase _fetchPokemonDetailsUseCase;

  FetchPokemonDetailsNotifier(this._fetchPokemonDetailsUseCase)
      : super(FetchPokemonDetailsInitial());

  Future fetchPokemonDetails({int pageNumber = 0}) async {
    if (pageNumber > 0) {
      state = FetchPokemonDetailsPaginationLoading();
    }
    final result = await _fetchPokemonDetailsUseCase.call(pageNumber);
    result.fold(
      (failure) {
        if (pageNumber == 0) {
          state = FetchPokemonDetailsError(errorMessage: failure);
        } else {
          state = FetchPokemonDetailsPaginationError(errorMessage: failure);
        }
      },
      (pokemons) => state = FetchPokemonDetailsLoaded(pokemons: pokemons),
    );
  }
}
