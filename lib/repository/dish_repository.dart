import 'dart:developer';

import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/model/dish_model/dish_model.dart';
import 'package:zartech_machie_test/network/api_services.dart';
import 'package:zartech_machie_test/repository/base_api_services.dart';

class DishNetwork implements BaseApiServices {
  final NetworkApiService _apiService = NetworkApiService();
  @override
  Future<DishModel> getDishDatas() async {
    try {
      dynamic response = await _apiService.getApiResponse(ApiEndPoint.apiKey);
      return response = DishModel.fromJson(response);
    } catch (e) {
      // rethrow means, it will call the throw statement without
      // exception object
      rethrow;
    }
  }
}
