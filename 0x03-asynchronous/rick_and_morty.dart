import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/'));
    if (response.statusCode == 200) {
      List rmCharacters = jsonDecode(response.body)['results'];
      for (int i = 0; i < rmCharacters.length; i++) {
        print(rmCharacters[i]['name']);
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (err) {
    print('error caught: $err');
  }
}