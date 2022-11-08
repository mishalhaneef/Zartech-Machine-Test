// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_menu_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableMenuList _$TableMenuListFromJson(Map<String, dynamic> json) =>
    TableMenuList(
      menuCategory: json['menu_category'] as String?,
      menuCategoryId: json['menu_category_id'] as String?,
      menuCategoryImage: json['menu_category_image'] as String?,
      nexturl: json['nexturl'] as String?,
      categoryDishes: (json['category_dishes'] as List<dynamic>?)
          ?.map((e) => CategoryDish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableMenuListToJson(TableMenuList instance) =>
    <String, dynamic>{
      'menu_category': instance.menuCategory,
      'menu_category_id': instance.menuCategoryId,
      'menu_category_image': instance.menuCategoryImage,
      'nexturl': instance.nexturl,
      'category_dishes': instance.categoryDishes,
    };
