// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPreferences {
  Locale get locale => throw _privateConstructorUsedError;
  ThemeMode get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
          UserPreferences value, $Res Function(UserPreferences) then) =
      _$UserPreferencesCopyWithImpl<$Res, UserPreferences>;
  @useResult
  $Res call({Locale locale, ThemeMode theme});
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res, $Val extends UserPreferences>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

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
              as Locale,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPreferencesImplCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$$UserPreferencesImplCopyWith(_$UserPreferencesImpl value,
          $Res Function(_$UserPreferencesImpl) then) =
      __$$UserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale, ThemeMode theme});
}

/// @nodoc
class __$$UserPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res, _$UserPreferencesImpl>
    implements _$$UserPreferencesImplCopyWith<$Res> {
  __$$UserPreferencesImplCopyWithImpl(
      _$UserPreferencesImpl _value, $Res Function(_$UserPreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? theme = null,
  }) {
    return _then(_$UserPreferencesImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$UserPreferencesImpl extends _UserPreferences {
  const _$UserPreferencesImpl({required this.locale, required this.theme})
      : super._();

  @override
  final Locale locale;
  @override
  final ThemeMode theme;

  @override
  String toString() {
    return 'UserPreferences(locale: $locale, theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      __$$UserPreferencesImplCopyWithImpl<_$UserPreferencesImpl>(
          this, _$identity);
}

abstract class _UserPreferences extends UserPreferences {
  const factory _UserPreferences(
      {required final Locale locale,
      required final ThemeMode theme}) = _$UserPreferencesImpl;
  const _UserPreferences._() : super._();

  @override
  Locale get locale;
  @override
  ThemeMode get theme;
  @override
  @JsonKey(ignore: true)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
