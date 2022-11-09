import 'package:zartech_machie_test/model/dish_model/dish_model.dart';

abstract class BaseApiServices {
  Future<DishModel> getDishDatas();
}
