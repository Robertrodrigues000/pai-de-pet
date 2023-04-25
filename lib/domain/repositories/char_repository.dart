import '../entitites/char_entity.dart';

abstract class ICharRepository {

  Future<List<CharEntity>> getCharList();
}