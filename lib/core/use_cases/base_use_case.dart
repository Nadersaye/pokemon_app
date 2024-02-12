import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T, Param> {
  Future<Either<String, T>> call([Param param]);
}
