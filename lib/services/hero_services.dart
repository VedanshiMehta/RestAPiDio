import 'package:dio_demo/Utils/api_service.dart';
import 'package:dio_demo/constants/api_constants.dart';
import 'package:dio_demo/models/heros.dart';
import 'package:flutter/material.dart';

class HeroService {
  Heros? heros;
  Future<Heros?> getReqRes() async {
    String url = ApiConstant.baseurl + ApiConstant.herosPage;
    final response = await ApiService().getAsync(url: url);
    if (response != null && response.statusCode == 200) {
      heros = superHeroListFromJson(response.data);
    } else {
      debugPrint("Error: ${response?.statusCode}: ${response?.statusMessage}");
    }
    return heros;
  }
}
