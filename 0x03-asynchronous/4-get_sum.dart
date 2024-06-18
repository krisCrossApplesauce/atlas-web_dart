import '4-util.dart';
import 'dart:convert';

Future<String> calculateTotal() async {
  Map user = jsonDecode(await fetchUserData());
  Map orders = jsonDecode(await fetchUserOrders(user["id"]));
  Map prices = orders.map((product) => await fetchProductPrice(product));
}