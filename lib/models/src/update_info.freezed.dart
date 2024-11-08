// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateInfo _$UpdateInfoFromJson(Map<String, dynamic> json) {
  return _UpdateInfo.fromJson(json);
}

/// @nodoc
mixin _$UpdateInfo {
  String get latestVersion => throw _privateConstructorUsedError;
  String get requiredVersion => throw _privateConstructorUsedError;
  DateTime get enabledAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateInfoCopyWith<UpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInfoCopyWith<$Res> {
  factory $UpdateInfoCopyWith(
          UpdateInfo value, $Res Function(UpdateInfo) then) =
      _$UpdateInfoCopyWithImpl<$Res, UpdateInfo>;
  @useResult
  $Res call({String latestVersion, String requiredVersion, DateTime enabledAt});
}

/// @nodoc
class _$UpdateInfoCopyWithImpl<$Res, $Val extends UpdateInfo>
    implements $UpdateInfoCopyWith<$Res> {
  _$UpdateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestVersion = null,
    Object? requiredVersion = null,
    Object? enabledAt = null,
  }) {
    return _then(_value.copyWith(
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      requiredVersion: null == requiredVersion
          ? _value.requiredVersion
          : requiredVersion // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAt: null == enabledAt
          ? _value.enabledAt
          : enabledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateInfoImplCopyWith<$Res>
    implements $UpdateInfoCopyWith<$Res> {
  factory _$$UpdateInfoImplCopyWith(
          _$UpdateInfoImpl value, $Res Function(_$UpdateInfoImpl) then) =
      __$$UpdateInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String latestVersion, String requiredVersion, DateTime enabledAt});
}

/// @nodoc
class __$$UpdateInfoImplCopyWithImpl<$Res>
    extends _$UpdateInfoCopyWithImpl<$Res, _$UpdateInfoImpl>
    implements _$$UpdateInfoImplCopyWith<$Res> {
  __$$UpdateInfoImplCopyWithImpl(
      _$UpdateInfoImpl _value, $Res Function(_$UpdateInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestVersion = null,
    Object? requiredVersion = null,
    Object? enabledAt = null,
  }) {
    return _then(_$UpdateInfoImpl(
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      requiredVersion: null == requiredVersion
          ? _value.requiredVersion
          : requiredVersion // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAt: null == enabledAt
          ? _value.enabledAt
          : enabledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateInfoImpl implements _UpdateInfo {
  const _$UpdateInfoImpl(
      {required this.latestVersion,
      required this.requiredVersion,
      required this.enabledAt});

  factory _$UpdateInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateInfoImplFromJson(json);

  @override
  final String latestVersion;
  @override
  final String requiredVersion;
  @override
  final DateTime enabledAt;

  @override
  String toString() {
    return 'UpdateInfo(latestVersion: $latestVersion, requiredVersion: $requiredVersion, enabledAt: $enabledAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoImpl &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.requiredVersion, requiredVersion) ||
                other.requiredVersion == requiredVersion) &&
            (identical(other.enabledAt, enabledAt) ||
                other.enabledAt == enabledAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latestVersion, requiredVersion, enabledAt);

  /// Create a copy of UpdateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoImplCopyWith<_$UpdateInfoImpl> get copyWith =>
      __$$UpdateInfoImplCopyWithImpl<_$UpdateInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateInfoImplToJson(
      this,
    );
  }
}

abstract class _UpdateInfo implements UpdateInfo {
  const factory _UpdateInfo(
      {required final String latestVersion,
      required final String requiredVersion,
      required final DateTime enabledAt}) = _$UpdateInfoImpl;

  factory _UpdateInfo.fromJson(Map<String, dynamic> json) =
      _$UpdateInfoImpl.fromJson;

  @override
  String get latestVersion;
  @override
  String get requiredVersion;
  @override
  DateTime get enabledAt;

  /// Create a copy of UpdateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInfoImplCopyWith<_$UpdateInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
