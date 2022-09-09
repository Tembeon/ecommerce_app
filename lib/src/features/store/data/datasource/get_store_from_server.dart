import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/store_response.dart';

abstract class IDtoGetStoreFromServer {
  /// Returns [StoreResponse] from server.
  Future<StoreResponse> getStore();
}

class DtoGetStoreFromServer implements IDtoGetStoreFromServer {
  /// Returns StoreResponse for main store page.
  ///
  /// Will throw [TimeoutException] after 70s or [Exception] if status code
  /// is not 200.
  @override
  Future<StoreResponse> getStore() async {
    final Uri url = Uri.parse(
      'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175',
    );

    var response = await http.get(url).timeout(const Duration(seconds: 70));
    if (response.statusCode != 200) {
      throw Exception(
        'Unexpected response status code: ${response.statusCode}',
      );
    }

    return StoreResponse.fromJson(jsonDecode(response.body));
  }
}
