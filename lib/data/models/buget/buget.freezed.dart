// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BudgetModel {
  int get id;
  double get amount;
  BudgetType get type;

  /// Create a copy of BudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BudgetModelCopyWith<BudgetModel> get copyWith =>
      _$BudgetModelCopyWithImpl<BudgetModel>(this as BudgetModel, _$identity);

  /// Serializes this BudgetModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BudgetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, type);

  @override
  String toString() {
    return 'BudgetModel(id: $id, amount: $amount, type: $type)';
  }
}

/// @nodoc
abstract mixin class $BudgetModelCopyWith<$Res> {
  factory $BudgetModelCopyWith(
          BudgetModel value, $Res Function(BudgetModel) _then) =
      _$BudgetModelCopyWithImpl;
  @useResult
  $Res call({int id, double amount, BudgetType type});
}

/// @nodoc
class _$BudgetModelCopyWithImpl<$Res> implements $BudgetModelCopyWith<$Res> {
  _$BudgetModelCopyWithImpl(this._self, this._then);

  final BudgetModel _self;
  final $Res Function(BudgetModel) _then;

  /// Create a copy of BudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BudgetType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BudgetModel implements BudgetModel {
  const _BudgetModel(
      {required this.id, required this.amount, required this.type});
  factory _BudgetModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetModelFromJson(json);

  @override
  final int id;
  @override
  final double amount;
  @override
  final BudgetType type;

  /// Create a copy of BudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BudgetModelCopyWith<_BudgetModel> get copyWith =>
      __$BudgetModelCopyWithImpl<_BudgetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BudgetModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BudgetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, type);

  @override
  String toString() {
    return 'BudgetModel(id: $id, amount: $amount, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$BudgetModelCopyWith<$Res>
    implements $BudgetModelCopyWith<$Res> {
  factory _$BudgetModelCopyWith(
          _BudgetModel value, $Res Function(_BudgetModel) _then) =
      __$BudgetModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, double amount, BudgetType type});
}

/// @nodoc
class __$BudgetModelCopyWithImpl<$Res> implements _$BudgetModelCopyWith<$Res> {
  __$BudgetModelCopyWithImpl(this._self, this._then);

  final _BudgetModel _self;
  final $Res Function(_BudgetModel) _then;

  /// Create a copy of BudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_BudgetModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BudgetType,
    ));
  }
}

// dart format on
