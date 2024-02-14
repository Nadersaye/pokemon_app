import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/presentaion/views/widgets/custom_pokemon_main_details_list_item.dart';
import '../../../../../core/utils/app_router.dart';
import '../../view model/pokemon_details_provider/fetch_pokemon_details_provider.dart';

class CustomPokemonMainDetailsListView extends ConsumerStatefulWidget {
  final List<PokemonDetailsEntity> pokemons;
  const CustomPokemonMainDetailsListView(this.pokemons, {super.key});

  @override
  ConsumerState<CustomPokemonMainDetailsListView> createState() =>
      _CustomPokemonMainDetailsListViewState();
}

class _CustomPokemonMainDetailsListViewState
    extends ConsumerState<CustomPokemonMainDetailsListView> {
  int nextPage = 1;
  bool isLoading = false;
  final ScrollController _scrollController = ScrollController();
  static const scrollThreshold = 0.7;
  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() async {
    double pixels = _scrollController.position.pixels;
    double maxScroll = _scrollController.position.maxScrollExtent;
    if (pixels >= maxScroll * scrollThreshold) {
      if (!isLoading) {
        isLoading = true;

        await ref
            .watch(fetchPokemonDetailsProvider.notifier)
            .fetchPokemonDetails(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.pokemons.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            AppRouter.router.push(
              AppRouter.pokemonDetails,
              extra: widget.pokemons[index],
            );
          },
          child:
              CustomPokemonMainDetailsListItem(pokemon: widget.pokemons[index]),
        );
      },
    );
  }
}
