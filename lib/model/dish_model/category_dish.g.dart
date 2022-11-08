// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDish _$CategoryDishFromJson(Map<String, dynamic> json) => CategoryDish(
      dishId: json['dish_id'] as String?,
      dishName: json['dish_name'] as String?,
      dishPrice: (json['dish_price'] as num?)?.toDouble(),
      dishImage: json['dish_image'] as String?,
      dishCurrency: json['dish_currency'] as String?,
      dishCalories: json['dish_calories'] as int?,
      dishDescription: json['dish_description'] as String?,
      dishAvailability: json['dish_Availability'] as bool?,
      dishType: json['dish_Type'] as int?,
      nexturl: json['nexturl'] as String?,
      addonCat: (json['addonCat'] as List<dynamic>?)
          ?.map((e) => AddonCat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDishToJson(CategoryDish instance) =>
    <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_currency': instance.dishCurrency,
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
      'dish_Availability': instance.dishAvailability,
      'dish_Type': instance.dishType,
      'nexturl': instance.nexturl,
      'addonCat': instance.addonCat,
    };
