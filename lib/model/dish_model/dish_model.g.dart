// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishModel _$DishModelFromJson(Map<String, dynamic> json) => DishModel(
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => Drink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DishModelToJson(DishModel instance) => <String, dynamic>{
      'drinks': instance.drinks,
    };
