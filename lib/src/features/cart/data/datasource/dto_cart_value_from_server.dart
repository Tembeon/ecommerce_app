import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/cart_value/cart_value.dart';

abstract class IDtoCartValueFromServer {
  /// Returns [RawCartValue] from server.
  Future<RawCartValue> getCartValue();
}

class CartValueFromServer extends IDtoCartValueFromServer {
  /// Returns [RawCartValue] from server.
  ///
  /// Can throw [Exception] if response is not successful.
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
