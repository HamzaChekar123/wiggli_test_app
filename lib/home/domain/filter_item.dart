import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_item.freezed.dart';

@freezed
class FilterItem with _$FilterItem {
  const FilterItem._();
  const factory FilterItem({
    required String id,
    required String name,

    String? icon,
  }) = _FilterItem;
}
