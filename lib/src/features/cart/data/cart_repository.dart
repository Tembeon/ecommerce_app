import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/cart_content.dart';

abstract class ICartRepository {
  /// Returns cart content.
  Future<CartContent> getCart();
}

class CommerceCartRepository implements ICartRepository {

  /// Returns cart content.
  ///
  /// Can throw network errors. If status code is not 200, then
  /// throws [Exception].
  @override
  Future<CartContent> getCart() async {
    Uri url = Uri.parse(
      'https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149',
    );
    var response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception(
        'Unexpected response status code: ${response.statusCode}',
      );
    }

    return CartContent.fromJson(jsonDecode(response.body));
  }
}
