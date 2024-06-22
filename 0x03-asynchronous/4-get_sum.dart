import '4-util.dart';
import 'dart:convert';

Future<String> calculateTotal() async {
  Map user = jsonDecode(await fetchUserData());
  List orders = jsonDecode(await fetchUserOrders(user["id"]));
  double total = 0;
  for (var i = 0; i < orders.length; i++) {
    total += double.parse(await fetchProductPrice(orders[i]));
  }
  return total.toString();
}