import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view model/pokemon_details_provider/fetch_pokemon_details_provider.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    ref.read(fetchPokemonDetailsProvider.notifier).fetchPokemonDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: HomeViewBody(),
      ),
    );
  }
}
