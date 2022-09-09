import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/item_details_response.dart';

abstract class IDtoGetItemDetailsFromServer {
  Future<DetailsResponse> getDetails();
}

class DtoGetItemDetailsFromServer implements IDtoGetItemDetailsFromServer {
  @override
  Future<DetailsResponse> getDetails() async {
    Uri url = Uri.parse(
      'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5',
    );

    var response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception(
        'Unexpected response status code: ${response.statusCode}',
      );
    }

    return DetailsResponse.fromJson(jsonDecode(response.body));
  }
}
