import 'package:bloc_app_stuctura/core/error/failures/failures.dart';
import 'package:bloc_app_stuctura/shared/domain/entities/character/character.dart';

import 'package:dartz/dartz.dart';

import '../../../../shared/data/model/character/character_model.dart';

abstract class CharactersRepository{
  Future<Either<Failures,List<Character>>> fetchAllCharacters();
  Future<Either<Failures, List<Character>>> searchCharacter(String characterName);
}