import 'dart:convert';

import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism_detail_response.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism_list_response.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String _baseUrl = "https://tourism-api.dicoding.dev";

  Future<TourismListResponse> getTourismList() async {
    final response = await http.get(Uri.parse('$_baseUrl/list'));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return TourismListResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Caught an error. Failed to load Tourism List.');
    }
  }

  Future<TourismDetailResponse> getDetailList(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/detail/$id'));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return TourismDetailResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Caught an error. Failed to load Tourism Detail list');
    }
  }
}
