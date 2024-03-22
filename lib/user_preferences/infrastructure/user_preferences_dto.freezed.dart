// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPreferencesDto {
  String get locale => throw _privateConstructorUsedError;
  ThemeMode get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPreferencesDtoCopyWith<UserPreferencesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesDtoCopyWith<$Res> {
  factory $UserPreferencesDtoCopyWith(
          UserPreferencesDto value, $Res Function(UserPreferencesDto) then) =
      _$UserPreferencesDtoCopyWithImpl<$Res, UserPreferencesDto>;
  @useResult
  $Res call({String locale, ThemeMode theme});
}

/// @nodoc
class _$UserPreferencesDtoCopyWithImpl<$Res, $Val extends UserPreferencesDto>
    implements $UserPreferencesDtoCopyWith<$Res> {
  _$UserPreferencesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPreferencesDtoImplCopyWith<$Res>
    implements $UserPreferencesDtoCopyWith<$Res> {
  factory _$$UserPreferencesDtoImplCopyWith(_$UserPreferencesDtoImpl value,
          $Res Function(_$UserPreferencesDtoImpl) then) =
      __$$UserPreferencesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String locale, ThemeMode theme});
}

/// @nodoc
class __$$UserPreferencesDtoImplCopyWithImpl<$Res>
    extends _$UserPreferencesDtoCopyWithImpl<$Res, _$UserPreferencesDtoImpl>
    implements _$$UserPreferencesDtoImplCopyWith<$Res> {
  __$$UserPreferencesDtoImplCopyWithImpl(_$UserPreferencesDtoImpl _value,
      $Res Function(_$UserPreferencesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? theme = null,
  }) {
    return _then(_$UserPreferencesDtoImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$UserPreferencesDtoImpl extends _UserPreferencesDto {
  const _$UserPreferencesDtoImpl({required this.locale, required this.theme})
      : super._();

  @override
  final String locale;
  @override
  final ThemeMode theme;

  @override
  String toString() {
    return 'UserPreferencesDto(locale: $locale, theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesDtoImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesDtoImplCopyWith<_$UserPreferencesDtoImpl> get copyWith =>
      __$$UserPreferencesDtoImplCopyWithImpl<_$UserPreferencesDtoImpl>(
          this, _$identity);
}

abstract class _UserPreferencesDto extends UserPreferencesDto {
  const factory _UserPreferencesDto(
      {required final String locale,
      required final ThemeMode theme}) = _$UserPreferencesDtoImpl;
  const _UserPreferencesDto._() : super._();

  @override
  String get locale;
  @override
  ThemeMode get theme;
  @override
  @JsonKey(ignore: true)
  _$$UserPreferencesDtoImplCopyWith<_$UserPreferencesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
