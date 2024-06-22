import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> printRmCharacters() async {
  try {
    http.Response RmCharactersResponse = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/'));
    List RmCharacters = jsonDecode(RmCharactersResponse.body)['results'];
    String RmCharacterNames = '';
    for (int i = 0; i < RmCharacters.length; i++) {
      // print(RmCharacters[i]['name']);
      RmCharacterNames += RmCharacters[i]['name'];
    }
    return RmCharacterNames;
  } catch (err) {
    return 'error caught: $err';
  }
}