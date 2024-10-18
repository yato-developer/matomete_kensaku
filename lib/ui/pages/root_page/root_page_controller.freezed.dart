// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RootPageState {
  int get tabIndex => throw _privateConstructorUsedError;
  int get currentTabIndex => throw _privateConstructorUsedError;

  /// Create a copy of RootPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RootPageStateCopyWith<RootPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootPageStateCopyWith<$Res> {
  factory $RootPageStateCopyWith(
          RootPageState value, $Res Function(RootPageState) then) =
      _$RootPageStateCopyWithImpl<$Res, RootPageState>;
  @useResult
  $Res call({int tabIndex, int currentTabIndex});
}

/// @nodoc
class _$RootPageStateCopyWithImpl<$Res, $Val extends RootPageState>
    implements $RootPageStateCopyWith<$Res> {
  _$RootPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RootPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? currentTabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RootPageStateImplCopyWith<$Res>
    implements $RootPageStateCopyWith<$Res> {
  factory _$$RootPageStateImplCopyWith(
          _$RootPageStateImpl value, $Res Function(_$RootPageStateImpl) then) =
      __$$RootPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex, int currentTabIndex});
}

/// @nodoc
class __$$RootPageStateImplCopyWithImpl<$Res>
    extends _$RootPageStateCopyWithImpl<$Res, _$RootPageStateImpl>
    implements _$$RootPageStateImplCopyWith<$Res> {
  __$$RootPageStateImplCopyWithImpl(
      _$RootPageStateImpl _value, $Res Function(_$RootPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RootPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? currentTabIndex = null,
  }) {
    return _then(_$RootPageStateImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RootPageStateImpl implements _RootPageState {
  const _$RootPageStateImpl({this.tabIndex = 0, this.currentTabIndex = 0});

  @override
  @JsonKey()
  final int tabIndex;
  @override
  @JsonKey()
  final int currentTabIndex;

  @override
  String toString() {
    return 'RootPageState(tabIndex: $tabIndex, currentTabIndex: $currentTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootPageStateImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                other.currentTabIndex == currentTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex, currentTabIndex);

  /// Create a copy of RootPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RootPageStateImplCopyWith<_$RootPageStateImpl> get copyWith =>
      __$$RootPageStateImplCopyWithImpl<_$RootPageStateImpl>(this, _$identity);
}

abstract class _RootPageState implements RootPageState {
  const factory _RootPageState(
      {final int tabIndex, final int currentTabIndex}) = _$RootPageStateImpl;

  @override
  int get tabIndex;
  @override
  int get currentTabIndex;

  /// Create a copy of RootPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RootPageStateImplCopyWith<_$RootPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
