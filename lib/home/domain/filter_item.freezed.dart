// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterItemCopyWith<FilterItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterItemCopyWith<$Res> {
  factory $FilterItemCopyWith(
          FilterItem value, $Res Function(FilterItem) then) =
      _$FilterItemCopyWithImpl<$Res, FilterItem>;
  @useResult
  $Res call({String id, String name, String? icon});
}

/// @nodoc
class _$FilterItemCopyWithImpl<$Res, $Val extends FilterItem>
    implements $FilterItemCopyWith<$Res> {
  _$FilterItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterItemImplCopyWith<$Res>
    implements $FilterItemCopyWith<$Res> {
  factory _$$FilterItemImplCopyWith(
          _$FilterItemImpl value, $Res Function(_$FilterItemImpl) then) =
      __$$FilterItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? icon});
}

/// @nodoc
class __$$FilterItemImplCopyWithImpl<$Res>
    extends _$FilterItemCopyWithImpl<$Res, _$FilterItemImpl>
    implements _$$FilterItemImplCopyWith<$Res> {
  __$$FilterItemImplCopyWithImpl(
      _$FilterItemImpl _value, $Res Function(_$FilterItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
  }) {
    return _then(_$FilterItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterItemImpl extends _FilterItem {
  const _$FilterItemImpl({required this.id, required this.name, this.icon})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String? icon;

  @override
  String toString() {
    return 'FilterItem(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterItemImplCopyWith<_$FilterItemImpl> get copyWith =>
      __$$FilterItemImplCopyWithImpl<_$FilterItemImpl>(this, _$identity);
}

abstract class _FilterItem extends FilterItem {
  const factory _FilterItem(
      {required final String id,
      required final String name,
      final String? icon}) = _$FilterItemImpl;
  const _FilterItem._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$FilterItemImplCopyWith<_$FilterItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
