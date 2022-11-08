import 'package:json_annotation/json_annotation.dart';

import 'addon.dart';

part 'addon_cat.g.dart';

@JsonSerializable()
class AddonCat {
  @JsonKey(name: 'addon_category')
  String? addonCategory;
  @JsonKey(name: 'addon_category_id')
  String? addonCategoryId;
  @JsonKey(name: 'addon_selection')
  int? addonSelection;
  String? nexturl;
  List<Addon>? addons;

  AddonCat({
    this.addonCategory,
    this.addonCategoryId,
    this.addonSelection,
    this.nexturl,
    this.addons,
  });

  factory AddonCat.fromJson(Map<String, dynamic> json) {
    return _$AddonCatFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddonCatToJson(this);
}
