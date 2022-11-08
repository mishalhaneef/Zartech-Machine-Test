import 'package:json_annotation/json_annotation.dart';

import 'addon_cat.dart';

part 'category_dish.g.dart';

@JsonSerializable()
class CategoryDish {
  @JsonKey(name: 'dish_id')
  String? dishId;
  @JsonKey(name: 'dish_name')
  String? dishName;
  @JsonKey(name: 'dish_price')
  double? dishPrice;
  @JsonKey(name: 'dish_image')
  String? dishImage;
  @JsonKey(name: 'dish_currency')
  String? dishCurrency;
  @JsonKey(name: 'dish_calories')
  int? dishCalories;
  @JsonKey(name: 'dish_description')
  String? dishDescription;
  @JsonKey(name: 'dish_Availability')
  bool? dishAvailability;
  @JsonKey(name: 'dish_Type')
  int? dishType;
  String? nexturl;
  List<AddonCat>? addonCat;

  CategoryDish({
    this.dishId,
    this.dishName,
    this.dishPrice,
    this.dishImage,
    this.dishCurrency,
    this.dishCalories,
    this.dishDescription,
    this.dishAvailability,
    this.dishType,
    this.nexturl,
    this.addonCat,
  });

  factory CategoryDish.fromJson(Map<String, dynamic> json) {
    return _$CategoryDishFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryDishToJson(this);
}
