import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    http.Response response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/'));
    List rmCharacters = jsonDecode(response.body)['results'];
    for (int i = 0; i < rmCharacters.length; i++) {
      print(rmCharacters[i]['name']);
    }
  } catch (err) {
    print('error caught: $err');
  }
}