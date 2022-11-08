import 'package:json_annotation/json_annotation.dart';

import 'table_menu_list.dart';

part 'dish_model.g.dart';

@JsonSerializable()
class DishModel {
  @JsonKey(name: 'restaurant_id')
  String? restaurantId;
  @JsonKey(name: 'restaurant_name')
  String? restaurantName;
  @JsonKey(name: 'restaurant_image')
  String? restaurantImage;
  @JsonKey(name: 'table_id')
  String? tableId;
  @JsonKey(name: 'table_name')
  String? tableName;
  @JsonKey(name: 'branch_name')
  String? branchName;
  String? nexturl;
  @JsonKey(name: 'table_menu_list')
  List<TableMenuList>? tableMenuList;

  DishModel({
    this.restaurantId,
    this.restaurantName,
    this.restaurantImage,
    this.tableId,
    this.tableName,
    this.branchName,
    this.nexturl,
    this.tableMenuList,
  });

  factory DishModel.fromJson(Map<String, dynamic> json) {
    return _$DishModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DishModelToJson(this);
}
