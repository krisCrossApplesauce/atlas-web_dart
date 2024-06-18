import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String dataString = await fetchUserData();
  Map dataMap = jsonDecode(dataString);
  return dataMap["id"];
}