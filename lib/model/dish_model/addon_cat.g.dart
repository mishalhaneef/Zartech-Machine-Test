// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddonCat _$AddonCatFromJson(Map<String, dynamic> json) => AddonCat(
      addonCategory: json['addon_category'] as String?,
      addonCategoryId: json['addon_category_id'] as String?,
      addonSelection: json['addon_selection'] as int?,
      nexturl: json['nexturl'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => Addon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddonCatToJson(AddonCat instance) => <String, dynamic>{
      'addon_category': instance.addonCategory,
      'addon_category_id': instance.addonCategoryId,
      'addon_selection': instance.addonSelection,
      'nexturl': instance.nexturl,
      'addons': instance.addons,
    };
