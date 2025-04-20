// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pie_chart_data_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TotalExpensesByCategoryModel {
  String get category;
  double get amount;

  /// Create a copy of TotalExpensesByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TotalExpensesByCategoryModelCopyWith<TotalExpensesByCategoryModel>
      get copyWith => _$TotalExpensesByCategoryModelCopyWithImpl<
              TotalExpensesByCategoryModel>(
          this as TotalExpensesByCategoryModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TotalExpensesByCategoryModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, amount);

  @override
  String toString() {
    return 'TotalExpensesByCategoryModel(category: $category, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $TotalExpensesByCategoryModelCopyWith<$Res> {
  factory $TotalExpensesByCategoryModelCopyWith(
          TotalExpensesByCategoryModel value,
          $Res Function(TotalExpensesByCategoryModel) _then) =
      _$TotalExpensesByCategoryModelCopyWithImpl;
  @useResult
  $Res call({String category, double amount});
}

/// @nodoc
class _$TotalExpensesByCategoryModelCopyWithImpl<$Res>
    implements $TotalExpensesByCategoryModelCopyWith<$Res> {
  _$TotalExpensesByCategoryModelCopyWithImpl(this._self, this._then);

  final TotalExpensesByCategoryModel _self;
  final $Res Function(TotalExpensesByCategoryModel) _then;

  /// Create a copy of TotalExpensesByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _TotalExpensesByCategoryModel implements TotalExpensesByCategoryModel {
  const _TotalExpensesByCategoryModel(
      {required this.category, required this.amount});

  @override
  final String category;
  @override
  final double amount;

  /// Create a copy of TotalExpensesByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TotalExpensesByCategoryModelCopyWith<_TotalExpensesByCategoryModel>
      get copyWith => __$TotalExpensesByCategoryModelCopyWithImpl<
          _TotalExpensesByCategoryModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TotalExpensesByCategoryModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, amount);

  @override
  String toString() {
    return 'TotalExpensesByCategoryModel(category: $category, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$TotalExpensesByCategoryModelCopyWith<$Res>
    implements $TotalExpensesByCategoryModelCopyWith<$Res> {
  factory _$TotalExpensesByCategoryModelCopyWith(
          _TotalExpensesByCategoryModel value,
          $Res Function(_TotalExpensesByCategoryModel) _then) =
      __$TotalExpensesByCategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call({String category, double amount});
}

/// @nodoc
class __$TotalExpensesByCategoryModelCopyWithImpl<$Res>
    implements _$TotalExpensesByCategoryModelCopyWith<$Res> {
  __$TotalExpensesByCategoryModelCopyWithImpl(this._self, this._then);

  final _TotalExpensesByCategoryModel _self;
  final $Res Function(_TotalExpensesByCategoryModel) _then;

  /// Create a copy of TotalExpensesByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_TotalExpensesByCategoryModel(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
