import 'package:myproject/data/api_web_services/character_web_service.dart';
import 'package:myproject/data/models/characters.dart';

class CharactersRepository{
  final CharactersWebServices charactersWebServices;
  CharactersRepository (this.charactersWebServices);
  Future<List<dynamic>>getAllCharacters() async{
    final characters= await charactersWebServices.getAllCharacters();
    return characters.map((character) => character.fromJson(character)).toList();
  }
}