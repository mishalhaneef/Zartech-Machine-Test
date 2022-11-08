// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishModel _$DishModelFromJson(Map<String, dynamic> json) => DishModel(
      restaurantId: json['restaurant_id'] as String?,
      restaurantName: json['restaurant_name'] as String?,
      restaurantImage: json['restaurant_image'] as String?,
      tableId: json['table_id'] as String?,
      tableName: json['table_name'] as String?,
      branchName: json['branch_name'] as String?,
      nexturl: json['nexturl'] as String?,
      tableMenuList: (json['table_menu_list'] as List<dynamic>?)
          ?.map((e) => TableMenuList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DishModelToJson(DishModel instance) => <String, dynamic>{
      'restaurant_id': instance.restaurantId,
      'restaurant_name': instance.restaurantName,
      'restaurant_image': instance.restaurantImage,
      'table_id': instance.tableId,
      'table_name': instance.tableName,
      'branch_name': instance.branchName,
      'nexturl': instance.nexturl,
      'table_menu_list': instance.tableMenuList,
    };
