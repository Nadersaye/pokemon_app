import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokemon_app/core/utils/app_router.dart';
import 'package:pokemon_app/core/utils/constants.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_entity.dart';
import 'core/utils/simple_provider_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PokemonEntityAdapter());
  Hive.registerAdapter(PokemonDetailsEntityAdapter());
  await Hive.openBox<PokemonEntity>(kPokemonsBox);
  await Hive.openBox<PokemonDetailsEntity>(kPokemonDetailsBox);
  final container = ProviderContainer(
    observers: [SimpleProviderObserver()],
  );
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => ProviderScope(
      parent: container,
      child: const PokemonApp(),
    ),
  ));
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: AppRouter.router,
    );
  }
}
