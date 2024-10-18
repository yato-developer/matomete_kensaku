// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_url_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchUrlPageState {
  List<LinkInfo> get linkInfo => throw _privateConstructorUsedError;

  /// Create a copy of FetchUrlPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchUrlPageStateCopyWith<FetchUrlPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUrlPageStateCopyWith<$Res> {
  factory $FetchUrlPageStateCopyWith(
          FetchUrlPageState value, $Res Function(FetchUrlPageState) then) =
      _$FetchUrlPageStateCopyWithImpl<$Res, FetchUrlPageState>;
  @useResult
  $Res call({List<LinkInfo> linkInfo});
}

/// @nodoc
class _$FetchUrlPageStateCopyWithImpl<$Res, $Val extends FetchUrlPageState>
    implements $FetchUrlPageStateCopyWith<$Res> {
  _$FetchUrlPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchUrlPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkInfo = null,
  }) {
    return _then(_value.copyWith(
      linkInfo: null == linkInfo
          ? _value.linkInfo
          : linkInfo // ignore: cast_nullable_to_non_nullable
              as List<LinkInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchUrlPageStateImplCopyWith<$Res>
    implements $FetchUrlPageStateCopyWith<$Res> {
  factory _$$FetchUrlPageStateImplCopyWith(_$FetchUrlPageStateImpl value,
          $Res Function(_$FetchUrlPageStateImpl) then) =
      __$$FetchUrlPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LinkInfo> linkInfo});
}

/// @nodoc
class __$$FetchUrlPageStateImplCopyWithImpl<$Res>
    extends _$FetchUrlPageStateCopyWithImpl<$Res, _$FetchUrlPageStateImpl>
    implements _$$FetchUrlPageStateImplCopyWith<$Res> {
  __$$FetchUrlPageStateImplCopyWithImpl(_$FetchUrlPageStateImpl _value,
      $Res Function(_$FetchUrlPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchUrlPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkInfo = null,
  }) {
    return _then(_$FetchUrlPageStateImpl(
      linkInfo: null == linkInfo
          ? _value._linkInfo
          : linkInfo // ignore: cast_nullable_to_non_nullable
              as List<LinkInfo>,
    ));
  }
}

/// @nodoc

class _$FetchUrlPageStateImpl implements _FetchUrlPageState {
  const _$FetchUrlPageStateImpl({final List<LinkInfo> linkInfo = const []})
      : _linkInfo = linkInfo;

  final List<LinkInfo> _linkInfo;
  @override
  @JsonKey()
  List<LinkInfo> get linkInfo {
    if (_linkInfo is EqualUnmodifiableListView) return _linkInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkInfo);
  }

  @override
  String toString() {
    return 'FetchUrlPageState(linkInfo: $linkInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUrlPageStateImpl &&
            const DeepCollectionEquality().equals(other._linkInfo, _linkInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_linkInfo));

  /// Create a copy of FetchUrlPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUrlPageStateImplCopyWith<_$FetchUrlPageStateImpl> get copyWith =>
      __$$FetchUrlPageStateImplCopyWithImpl<_$FetchUrlPageStateImpl>(
          this, _$identity);
}

abstract class _FetchUrlPageState implements FetchUrlPageState {
  const factory _FetchUrlPageState({final List<LinkInfo> linkInfo}) =
      _$FetchUrlPageStateImpl;

  @override
  List<LinkInfo> get linkInfo;

  /// Create a copy of FetchUrlPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchUrlPageStateImplCopyWith<_$FetchUrlPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
