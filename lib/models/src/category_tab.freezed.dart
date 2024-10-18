// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryTab _$CategoryTabFromJson(Map<String, dynamic> json) {
  return _CategoryTab.fromJson(json);
}

/// @nodoc
mixin _$CategoryTab {
  String get tabName => throw _privateConstructorUsedError;
  List<ExternalUrls> get externalUrls => throw _privateConstructorUsedError;

  /// Serializes this CategoryTab to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTabCopyWith<CategoryTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTabCopyWith<$Res> {
  factory $CategoryTabCopyWith(
          CategoryTab value, $Res Function(CategoryTab) then) =
      _$CategoryTabCopyWithImpl<$Res, CategoryTab>;
  @useResult
  $Res call({String tabName, List<ExternalUrls> externalUrls});
}

/// @nodoc
class _$CategoryTabCopyWithImpl<$Res, $Val extends CategoryTab>
    implements $CategoryTabCopyWith<$Res> {
  _$CategoryTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabName = null,
    Object? externalUrls = null,
  }) {
    return _then(_value.copyWith(
      tabName: null == tabName
          ? _value.tabName
          : tabName // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as List<ExternalUrls>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryTabImplCopyWith<$Res>
    implements $CategoryTabCopyWith<$Res> {
  factory _$$CategoryTabImplCopyWith(
          _$CategoryTabImpl value, $Res Function(_$CategoryTabImpl) then) =
      __$$CategoryTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tabName, List<ExternalUrls> externalUrls});
}

/// @nodoc
class __$$CategoryTabImplCopyWithImpl<$Res>
    extends _$CategoryTabCopyWithImpl<$Res, _$CategoryTabImpl>
    implements _$$CategoryTabImplCopyWith<$Res> {
  __$$CategoryTabImplCopyWithImpl(
      _$CategoryTabImpl _value, $Res Function(_$CategoryTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabName = null,
    Object? externalUrls = null,
  }) {
    return _then(_$CategoryTabImpl(
      tabName: null == tabName
          ? _value.tabName
          : tabName // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value._externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as List<ExternalUrls>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryTabImpl implements _CategoryTab {
  const _$CategoryTabImpl(
      {required this.tabName, required final List<ExternalUrls> externalUrls})
      : _externalUrls = externalUrls;

  factory _$CategoryTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryTabImplFromJson(json);

  @override
  final String tabName;
  final List<ExternalUrls> _externalUrls;
  @override
  List<ExternalUrls> get externalUrls {
    if (_externalUrls is EqualUnmodifiableListView) return _externalUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_externalUrls);
  }

  @override
  String toString() {
    return 'CategoryTab(tabName: $tabName, externalUrls: $externalUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTabImpl &&
            (identical(other.tabName, tabName) || other.tabName == tabName) &&
            const DeepCollectionEquality()
                .equals(other._externalUrls, _externalUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, tabName, const DeepCollectionEquality().hash(_externalUrls));

  /// Create a copy of CategoryTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTabImplCopyWith<_$CategoryTabImpl> get copyWith =>
      __$$CategoryTabImplCopyWithImpl<_$CategoryTabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryTabImplToJson(
      this,
    );
  }
}

abstract class _CategoryTab implements CategoryTab {
  const factory _CategoryTab(
      {required final String tabName,
      required final List<ExternalUrls> externalUrls}) = _$CategoryTabImpl;

  factory _CategoryTab.fromJson(Map<String, dynamic> json) =
      _$CategoryTabImpl.fromJson;

  @override
  String get tabName;
  @override
  List<ExternalUrls> get externalUrls;

  /// Create a copy of CategoryTab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTabImplCopyWith<_$CategoryTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ExternalUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalUrls
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
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$ExternalUrlsImpl(
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
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({required this.title, required this.url});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalUrls(title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, url);

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls(
      {required final String title,
      required final String url}) = _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  String get title;
  @override
  String get url;

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
