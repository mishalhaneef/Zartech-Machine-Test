import 'package:json_annotation/json_annotation.dart';

import 'category_dish.dart';

part 'table_menu_list.g.dart';

@JsonSerializable()
class TableMenuList {
  @JsonKey(name: 'menu_category')
  String? menuCategory;
  @JsonKey(name: 'menu_category_id')
  String? menuCategoryId;
  @JsonKey(name: 'menu_category_image')
  String? menuCategoryImage;
  String? nexturl;
  @JsonKey(name: 'category_dishes')
  List<CategoryDish>? categoryDishes;

  TableMenuList({
    this.menuCategory,
    this.menuCategoryId,
    this.menuCategoryImage,
    this.nexturl,
    this.categoryDishes,
  });

  factory TableMenuList.fromJson(Map<String, dynamic> json) {
    return _$TableMenuListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TableMenuListToJson(this);
}
