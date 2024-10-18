// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinkInfo _$LinkInfoFromJson(Map<String, dynamic> json) {
  return _LinkInfo.fromJson(json);
}

/// @nodoc
mixin _$LinkInfo {
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this LinkInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkInfoCopyWith<LinkInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkInfoCopyWith<$Res> {
  factory $LinkInfoCopyWith(LinkInfo value, $Res Function(LinkInfo) then) =
      _$LinkInfoCopyWithImpl<$Res, LinkInfo>;
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class _$LinkInfoCopyWithImpl<$Res, $Val extends LinkInfo>
    implements $LinkInfoCopyWith<$Res> {
  _$LinkInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkInfoImplCopyWith<$Res>
    implements $LinkInfoCopyWith<$Res> {
  factory _$$LinkInfoImplCopyWith(
          _$LinkInfoImpl value, $Res Function(_$LinkInfoImpl) then) =
      __$$LinkInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class __$$LinkInfoImplCopyWithImpl<$Res>
    extends _$LinkInfoCopyWithImpl<$Res, _$LinkInfoImpl>
    implements _$$LinkInfoImplCopyWith<$Res> {
  __$$LinkInfoImplCopyWithImpl(
      _$LinkInfoImpl _value, $Res Function(_$LinkInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$LinkInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkInfoImpl implements _LinkInfo {
  const _$LinkInfoImpl({required this.title, required this.url});

  factory _$LinkInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkInfoImplFromJson(json);

  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'LinkInfo(title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, url);

  /// Create a copy of LinkInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkInfoImplCopyWith<_$LinkInfoImpl> get copyWith =>
      __$$LinkInfoImplCopyWithImpl<_$LinkInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkInfoImplToJson(
      this,
    );
  }
}

abstract class _LinkInfo implements LinkInfo {
  const factory _LinkInfo(
      {required final String title,
      required final String url}) = _$LinkInfoImpl;

  factory _LinkInfo.fromJson(Map<String, dynamic> json) =
      _$LinkInfoImpl.fromJson;

  @override
  String get title;
  @override
  String get url;

  /// Create a copy of LinkInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkInfoImplCopyWith<_$LinkInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
