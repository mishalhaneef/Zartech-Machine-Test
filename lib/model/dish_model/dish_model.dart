import 'package:json_annotation/json_annotation.dart';

import 'drink.dart';

part 'dish_model.g.dart';

@JsonSerializable()
class DishModel {
  List<Drink>? drinks;

  DishModel({this.drinks});

  factory DishModel.fromJson(Map<String, dynamic> json) {
    return _$DishModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DishModelToJson(this);
}
