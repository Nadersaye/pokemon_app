import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/use_cases/base_use_case.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import '../repos/base_home_repo.dart';

class FetchPokemonsDetailsUseCase
    extends BaseUseCase<List<PokemonDetailsEntity>, int> {
  final BaseHomeRepo _baseHomeRepo;

  FetchPokemonsDetailsUseCase({required BaseHomeRepo baseHomeRepo})
      : _baseHomeRepo = baseHomeRepo;
  @override
  Future<Either<String, List<PokemonDetailsEntity>>> call([int? param]) async {
    var pokemons = await _baseHomeRepo.fetchPokemons(param!);
    return pokemons.fold((l) => Left(l), (r) async {
      return await _baseHomeRepo.fetchPokemonDetails(r, param);
    });
  }
}
