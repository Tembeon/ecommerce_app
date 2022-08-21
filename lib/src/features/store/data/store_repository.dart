import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/store_items.dart';

abstract class IStoreRepository {
  /// Returns items for main store
  Future<StoreItems> getStoreItems();

  //TODO(tembeon): method should return ItemDetails
  /// Returns details about selected item
  Future<Object> getDetailsAboutItem(final int index);
}

class EcommerceApiRepository extends IStoreRepository {
  /// Returns ItemDetails for one item.
  ///
  /// Will throw [TimeoutException] after 70s or [Exception] if status code
  /// is not 200.
  @override
  Future<Object> getDetailsAboutItem(final int index) {
    // TODO: implement getDetailsAboutItem
    throw UnimplementedError();
  }

  /// Returns StoreItems for main store page.
  ///
  /// Will throw [TimeoutException] after 70s or [Exception] if status code
  /// is not 200.
  @override
  Future<StoreItems> getStoreItems() async {
    final Uri url = Uri.parse(
      'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175',
    );

    var response = await http.get(url).timeout(const Duration(seconds: 70));
    if (response.statusCode != 200) {
      throw Exception('Unexpected response status code: ${response.statusCode}');
    }

    return StoreItems.fromJson(jsonDecode(response.body));
  }
}
