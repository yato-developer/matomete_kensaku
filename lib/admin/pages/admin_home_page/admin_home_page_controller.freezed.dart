// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_home_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminHomePageState {
  CategoryType? get category => throw _privateConstructorUsedError;

  /// Create a copy of AdminHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminHomePageStateCopyWith<AdminHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminHomePageStateCopyWith<$Res> {
  factory $AdminHomePageStateCopyWith(
          AdminHomePageState value, $Res Function(AdminHomePageState) then) =
      _$AdminHomePageStateCopyWithImpl<$Res, AdminHomePageState>;
  @useResult
  $Res call({CategoryType? category});
}

/// @nodoc
class _$AdminHomePageStateCopyWithImpl<$Res, $Val extends AdminHomePageState>
    implements $AdminHomePageStateCopyWith<$Res> {
  _$AdminHomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminHomePageStateImplCopyWith<$Res>
    implements $AdminHomePageStateCopyWith<$Res> {
  factory _$$AdminHomePageStateImplCopyWith(_$AdminHomePageStateImpl value,
          $Res Function(_$AdminHomePageStateImpl) then) =
      __$$AdminHomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryType? category});
}

/// @nodoc
class __$$AdminHomePageStateImplCopyWithImpl<$Res>
    extends _$AdminHomePageStateCopyWithImpl<$Res, _$AdminHomePageStateImpl>
    implements _$$AdminHomePageStateImplCopyWith<$Res> {
  __$$AdminHomePageStateImplCopyWithImpl(_$AdminHomePageStateImpl _value,
      $Res Function(_$AdminHomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$AdminHomePageStateImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryType?,
    ));
  }
}

/// @nodoc

class _$AdminHomePageStateImpl implements _AdminHomePageState {
  const _$AdminHomePageStateImpl({this.category});

  @override
  final CategoryType? category;

  @override
  String toString() {
    return 'AdminHomePageState(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminHomePageStateImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of AdminHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminHomePageStateImplCopyWith<_$AdminHomePageStateImpl> get copyWith =>
      __$$AdminHomePageStateImplCopyWithImpl<_$AdminHomePageStateImpl>(
          this, _$identity);
}

abstract class _AdminHomePageState implements AdminHomePageState {
  const factory _AdminHomePageState({final CategoryType? category}) =
      _$AdminHomePageStateImpl;

  @override
  CategoryType? get category;

  /// Create a copy of AdminHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminHomePageStateImplCopyWith<_$AdminHomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
