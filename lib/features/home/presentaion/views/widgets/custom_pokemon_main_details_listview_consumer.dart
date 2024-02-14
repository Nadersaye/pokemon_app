import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/presentaion/views/widgets/custom_pokemon_main_details_list_view.dart';
import '../../view model/pokemon_details_provider/fetch_pokemon_details_provider.dart';
import '../../view model/pokemon_details_provider/fetch_pokemon_details_states.dart';
import 'pokemon_main_details_shimmer_list_view.dart';

class CustomPokemonMainDetailsListViewConsumer extends ConsumerStatefulWidget {
  const CustomPokemonMainDetailsListViewConsumer({super.key});

  @override
  ConsumerState<CustomPokemonMainDetailsListViewConsumer> createState() =>
      _CustomPokemonMainDetailsListViewConsumerState();
}

class _CustomPokemonMainDetailsListViewConsumerState
    extends ConsumerState<CustomPokemonMainDetailsListViewConsumer> {
  List<PokemonDetailsEntity> pokemons = [];
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(fetchPokemonDetailsProvider);
    if (data is FetchPokemonDetailsLoaded) {
      pokemons.addAll(data.pokemons);
    }
    /*if (data is FetchPokemonDetailsLoading) {
      return const Center(child: CircularProgressIndicator());
    } else*/
    if (data is FetchPokemonDetailsPaginationLoading ||
        data is FetchPokemonDetailsPaginationError ||
        data is FetchPokemonDetailsLoaded) {
      return CustomPokemonMainDetailsListView(pokemons);
    } else if (data is FetchPokemonDetailsError) {
      return Center(child: Text(data.errorMessage));
    } else {
      return const PokemonMainDetailsShimmerListView();
    }
  }
}
