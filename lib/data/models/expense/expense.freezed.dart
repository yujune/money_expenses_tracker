// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExpenseModel {
  double get amount;
  String get currency;
  String? get notes;
  String? get category;
  DateTime get date;

  /// Create a copy of CreateExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateExpenseModelCopyWith<CreateExpenseModel> get copyWith =>
      _$CreateExpenseModelCopyWithImpl<CreateExpenseModel>(
          this as CreateExpenseModel, _$identity);

  /// Serializes this CreateExpenseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateExpenseModel &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, currency, notes, category, date);

  @override
  String toString() {
    return 'CreateExpenseModel(amount: $amount, currency: $currency, notes: $notes, category: $category, date: $date)';
  }
}

/// @nodoc
abstract mixin class $CreateExpenseModelCopyWith<$Res> {
  factory $CreateExpenseModelCopyWith(
          CreateExpenseModel value, $Res Function(CreateExpenseModel) _then) =
      _$CreateExpenseModelCopyWithImpl;
  @useResult
  $Res call(
      {double amount,
      String currency,
      String? notes,
      String? category,
      DateTime date});
}

/// @nodoc
class _$CreateExpenseModelCopyWithImpl<$Res>
    implements $CreateExpenseModelCopyWith<$Res> {
  _$CreateExpenseModelCopyWithImpl(this._self, this._then);

  final CreateExpenseModel _self;
  final $Res Function(CreateExpenseModel) _then;

  /// Create a copy of CreateExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? notes = freezed,
    Object? category = freezed,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateExpenseModel implements CreateExpenseModel {
  const _CreateExpenseModel(
      {required this.amount,
      required this.currency,
      this.notes,
      this.category,
      required this.date});
  factory _CreateExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateExpenseModelFromJson(json);

  @override
  final double amount;
  @override
  final String currency;
  @override
  final String? notes;
  @override
  final String? category;
  @override
  final DateTime date;

  /// Create a copy of CreateExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateExpenseModelCopyWith<_CreateExpenseModel> get copyWith =>
      __$CreateExpenseModelCopyWithImpl<_CreateExpenseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateExpenseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateExpenseModel &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, currency, notes, category, date);

  @override
  String toString() {
    return 'CreateExpenseModel(amount: $amount, currency: $currency, notes: $notes, category: $category, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$CreateExpenseModelCopyWith<$Res>
    implements $CreateExpenseModelCopyWith<$Res> {
  factory _$CreateExpenseModelCopyWith(
          _CreateExpenseModel value, $Res Function(_CreateExpenseModel) _then) =
      __$CreateExpenseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double amount,
      String currency,
      String? notes,
      String? category,
      DateTime date});
}

/// @nodoc
class __$CreateExpenseModelCopyWithImpl<$Res>
    implements _$CreateExpenseModelCopyWith<$Res> {
  __$CreateExpenseModelCopyWithImpl(this._self, this._then);

  final _CreateExpenseModel _self;
  final $Res Function(_CreateExpenseModel) _then;

  /// Create a copy of CreateExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? notes = freezed,
    Object? category = freezed,
    Object? date = null,
  }) {
    return _then(_CreateExpenseModel(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$ExpenseModel {
  int get id;
  String? get category;
  double get amount;
  String get currency;
  DateTime get date;
  String get createdAt;
  String? get notes;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseModelCopyWith<ExpenseModel> get copyWith =>
      _$ExpenseModelCopyWithImpl<ExpenseModel>(
          this as ExpenseModel, _$identity);

  /// Serializes this ExpenseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, category, amount, currency, date, createdAt, notes);

  @override
  String toString() {
    return 'ExpenseModel(id: $id, category: $category, amount: $amount, currency: $currency, date: $date, createdAt: $createdAt, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $ExpenseModelCopyWith<$Res> {
  factory $ExpenseModelCopyWith(
          ExpenseModel value, $Res Function(ExpenseModel) _then) =
      _$ExpenseModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String? category,
      double amount,
      String currency,
      DateTime date,
      String createdAt,
      String? notes});
}

/// @nodoc
class _$ExpenseModelCopyWithImpl<$Res> implements $ExpenseModelCopyWith<$Res> {
  _$ExpenseModelCopyWithImpl(this._self, this._then);

  final ExpenseModel _self;
  final $Res Function(ExpenseModel) _then;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = freezed,
    Object? amount = null,
    Object? currency = null,
    Object? date = null,
    Object? createdAt = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExpenseModel implements ExpenseModel {
  const _ExpenseModel(
      {required this.id,
      this.category,
      required this.amount,
      required this.currency,
      required this.date,
      required this.createdAt,
      this.notes});
  factory _ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);

  @override
  final int id;
  @override
  final String? category;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final DateTime date;
  @override
  final String createdAt;
  @override
  final String? notes;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseModelCopyWith<_ExpenseModel> get copyWith =>
      __$ExpenseModelCopyWithImpl<_ExpenseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpenseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, category, amount, currency, date, createdAt, notes);

  @override
  String toString() {
    return 'ExpenseModel(id: $id, category: $category, amount: $amount, currency: $currency, date: $date, createdAt: $createdAt, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseModelCopyWith<$Res>
    implements $ExpenseModelCopyWith<$Res> {
  factory _$ExpenseModelCopyWith(
          _ExpenseModel value, $Res Function(_ExpenseModel) _then) =
      __$ExpenseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String? category,
      double amount,
      String currency,
      DateTime date,
      String createdAt,
      String? notes});
}

/// @nodoc
class __$ExpenseModelCopyWithImpl<$Res>
    implements _$ExpenseModelCopyWith<$Res> {
  __$ExpenseModelCopyWithImpl(this._self, this._then);

  final _ExpenseModel _self;
  final $Res Function(_ExpenseModel) _then;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? category = freezed,
    Object? amount = null,
    Object? currency = null,
    Object? date = null,
    Object? createdAt = null,
    Object? notes = freezed,
  }) {
    return _then(_ExpenseModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
