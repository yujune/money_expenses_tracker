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
mixin _$CreateBudgetModel {
  double get amount;
  BudgetType get type;
  String get currency;

  /// Create a copy of CreateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateBudgetModelCopyWith<CreateBudgetModel> get copyWith =>
      _$CreateBudgetModelCopyWithImpl<CreateBudgetModel>(
          this as CreateBudgetModel, _$identity);

  /// Serializes this CreateBudgetModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateBudgetModel &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, type, currency);

  @override
  String toString() {
    return 'CreateBudgetModel(amount: $amount, type: $type, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $CreateBudgetModelCopyWith<$Res> {
  factory $CreateBudgetModelCopyWith(
          CreateBudgetModel value, $Res Function(CreateBudgetModel) _then) =
      _$CreateBudgetModelCopyWithImpl;
  @useResult
  $Res call({double amount, BudgetType type, String currency});
}

/// @nodoc
class _$CreateBudgetModelCopyWithImpl<$Res>
    implements $CreateBudgetModelCopyWith<$Res> {
  _$CreateBudgetModelCopyWithImpl(this._self, this._then);

  final CreateBudgetModel _self;
  final $Res Function(CreateBudgetModel) _then;

  /// Create a copy of CreateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? type = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BudgetType,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateBudgetModel implements CreateBudgetModel {
  const _CreateBudgetModel(
      {required this.amount, required this.type, required this.currency});
  factory _CreateBudgetModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBudgetModelFromJson(json);

  @override
  final double amount;
  @override
  final BudgetType type;
  @override
  final String currency;

  /// Create a copy of CreateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateBudgetModelCopyWith<_CreateBudgetModel> get copyWith =>
      __$CreateBudgetModelCopyWithImpl<_CreateBudgetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateBudgetModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateBudgetModel &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, type, currency);

  @override
  String toString() {
    return 'CreateBudgetModel(amount: $amount, type: $type, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$CreateBudgetModelCopyWith<$Res>
    implements $CreateBudgetModelCopyWith<$Res> {
  factory _$CreateBudgetModelCopyWith(
          _CreateBudgetModel value, $Res Function(_CreateBudgetModel) _then) =
      __$CreateBudgetModelCopyWithImpl;
  @override
  @useResult
  $Res call({double amount, BudgetType type, String currency});
}

/// @nodoc
class __$CreateBudgetModelCopyWithImpl<$Res>
    implements _$CreateBudgetModelCopyWith<$Res> {
  __$CreateBudgetModelCopyWithImpl(this._self, this._then);

  final _CreateBudgetModel _self;
  final $Res Function(_CreateBudgetModel) _then;

  /// Create a copy of CreateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? type = null,
    Object? currency = null,
  }) {
    return _then(_CreateBudgetModel(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BudgetType,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UpdateBudgetModel {
  int get id;
  double get amount;
  BudgetType get type;
  String get currency;

  /// Create a copy of UpdateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateBudgetModelCopyWith<UpdateBudgetModel> get copyWith =>
      _$UpdateBudgetModelCopyWithImpl<UpdateBudgetModel>(
          this as UpdateBudgetModel, _$identity);

  /// Serializes this UpdateBudgetModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateBudgetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, type, currency);

  @override
  String toString() {
    return 'UpdateBudgetModel(id: $id, amount: $amount, type: $type, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $UpdateBudgetModelCopyWith<$Res> {
  factory $UpdateBudgetModelCopyWith(
          UpdateBudgetModel value, $Res Function(UpdateBudgetModel) _then) =
      _$UpdateBudgetModelCopyWithImpl;
  @useResult
  $Res call({int id, double amount, BudgetType type, String currency});
}

/// @nodoc
class _$UpdateBudgetModelCopyWithImpl<$Res>
    implements $UpdateBudgetModelCopyWith<$Res> {
  _$UpdateBudgetModelCopyWithImpl(this._self, this._then);

  final UpdateBudgetModel _self;
  final $Res Function(UpdateBudgetModel) _then;

  /// Create a copy of UpdateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? type = null,
    Object? currency = null,
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
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateBudgetModel implements UpdateBudgetModel {
  const _UpdateBudgetModel(
      {required this.id,
      required this.amount,
      required this.type,
      required this.currency});
  factory _UpdateBudgetModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateBudgetModelFromJson(json);

  @override
  final int id;
  @override
  final double amount;
  @override
  final BudgetType type;
  @override
  final String currency;

  /// Create a copy of UpdateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateBudgetModelCopyWith<_UpdateBudgetModel> get copyWith =>
      __$UpdateBudgetModelCopyWithImpl<_UpdateBudgetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateBudgetModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateBudgetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, type, currency);

  @override
  String toString() {
    return 'UpdateBudgetModel(id: $id, amount: $amount, type: $type, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$UpdateBudgetModelCopyWith<$Res>
    implements $UpdateBudgetModelCopyWith<$Res> {
  factory _$UpdateBudgetModelCopyWith(
          _UpdateBudgetModel value, $Res Function(_UpdateBudgetModel) _then) =
      __$UpdateBudgetModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, double amount, BudgetType type, String currency});
}

/// @nodoc
class __$UpdateBudgetModelCopyWithImpl<$Res>
    implements _$UpdateBudgetModelCopyWith<$Res> {
  __$UpdateBudgetModelCopyWithImpl(this._self, this._then);

  final _UpdateBudgetModel _self;
  final $Res Function(_UpdateBudgetModel) _then;

  /// Create a copy of UpdateBudgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? type = null,
    Object? currency = null,
  }) {
    return _then(_UpdateBudgetModel(
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
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$BudgetModel {
  int get id;
  double get amount;
  BudgetType get type;
  String get currency;
  double get totalSpent;

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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, type, currency, totalSpent);

  @override
  String toString() {
    return 'BudgetModel(id: $id, amount: $amount, type: $type, currency: $currency, totalSpent: $totalSpent)';
  }
}

/// @nodoc
abstract mixin class $BudgetModelCopyWith<$Res> {
  factory $BudgetModelCopyWith(
          BudgetModel value, $Res Function(BudgetModel) _then) =
      _$BudgetModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      double amount,
      BudgetType type,
      String currency,
      double totalSpent});
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
    Object? currency = null,
    Object? totalSpent = null,
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
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpent: null == totalSpent
          ? _self.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BudgetModel implements BudgetModel {
  const _BudgetModel(
      {required this.id,
      required this.amount,
      required this.type,
      required this.currency,
      this.totalSpent = 0});
  factory _BudgetModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetModelFromJson(json);

  @override
  final int id;
  @override
  final double amount;
  @override
  final BudgetType type;
  @override
  final String currency;
  @override
  @JsonKey()
  final double totalSpent;

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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, type, currency, totalSpent);

  @override
  String toString() {
    return 'BudgetModel(id: $id, amount: $amount, type: $type, currency: $currency, totalSpent: $totalSpent)';
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
  $Res call(
      {int id,
      double amount,
      BudgetType type,
      String currency,
      double totalSpent});
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
    Object? currency = null,
    Object? totalSpent = null,
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
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpent: null == totalSpent
          ? _self.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
