import 'package:go_router/go_router.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/home/presentaion/views/home_view.dart';
import '../../features/home/presentaion/views/pokemon_details_view.dart';

abstract class AppRouter {
  static const String onboarding = '/';
  static const String home = '/home';
  static const String pokemonDetails = '/pokemon-details';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: pokemonDetails,
        builder: (context, state) {
          return PokemonDetailsView(
            pokemonDetails: state.extra as PokemonDetailsEntity,
          );
        },
      ),
    ],
  );
}
