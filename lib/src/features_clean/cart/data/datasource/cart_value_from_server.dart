import 'dart:convert';

import '../models/cart_value/cart_value.dart';
import 'package:http/http.dart' as http;

abstract class ICartValueFromServer {
  Future<RawCartValue> getCartValue();
}

class CartValueFromServer extends ICartValueFromServer {
  @override
  Future<RawCartValue> getCartValue() async {
    Uri url = Uri.parse(
      'https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149',
    );
    var response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception(
        'Unexpected response status code: ${response.statusCode}',
      );
    }

    return RawCartValue.fromJson(jsonDecode(response.body));
  }
}
