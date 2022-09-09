import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/models/store_items/store_items.dart';
import '../../domain/repository/store_repository.dart';
import '../models/store_response.dart';

class EcommerceApiRepository implements IStoreRepository {
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
      throw Exception(
        'Unexpected response status code: ${response.statusCode}',
      );
    }

    var storeResponse = StoreResponse.fromJson(jsonDecode(response.body));

    return StoreItems(
      // convert response to best seller without nullable values
      bestSeller: storeResponse.bestSeller
          .map<BestSeller>(
            (e) => BestSeller(
              discountPrice: e.discountPrice,
              id: e.id,
              isFavorites: e.isFavorites ?? false,
              picture: e.picture,
              priceWithoutDiscount: e.priceWithoutDiscount,
              title: e.title,
            ),
          )
          .toList(),
      // convert response to home store without nullable values
      homeStore: storeResponse.homeStore
          .map<HomeStore>(
            (e) => HomeStore(
              id: e.id,
              isNew: e.isNew ?? false,
              title: e.title,
              subtitle: e.subtitle,
              picture: e.picture,
              isBuy: e.isBuy ?? false,
            ),
          )
          .toList(),
    );
  }
}
