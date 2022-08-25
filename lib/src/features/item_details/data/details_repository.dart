import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/details.dart';

abstract class IDetailsRepository {
  /// Returns [DetailsModel] about requested item.
  Future<DetailsModel> getDetails();
}

class DetailsRepository implements IDetailsRepository {

  /// Returns DetailsModel for one item.
  ///
  /// Will throw [Exception] if status code is not 200.
  @override
  Future<DetailsModel> getDetails() async {
    Uri url = Uri.parse(
      'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5',
    );

    var response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception(
        'Unexpected response status code: ${response.statusCode}',
      );
    }

    return DetailsModel.fromJson(jsonDecode(response.body));
  }
}
