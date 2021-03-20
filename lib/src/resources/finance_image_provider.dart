import 'package:share_finance/src/models/image_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class FinanceImageProvider {
  Client client = Client();

  Future<List<ImageModel>> fetchImageList() async {
    final response = await client.get(
        "https://api.punkapi.com/v2/beers");
    if (response.statusCode == 200) {
      // 成功
      List<dynamic> jsonArray = JsonDecoder().convert(response.body);
      return jsonArray.map((i) => ImageModel(i)).toList();
    } else {
      // 失敗
      throw Exception('Failed to load post');
    }
  }
}