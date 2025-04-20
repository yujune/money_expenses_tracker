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
mixin _$CategoryExpenseModel {
  String get category;
  double get amount;
  String get currency;

  /// Create a copy of CategoryExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryExpenseModelCopyWith<CategoryExpenseModel> get copyWith =>
      _$CategoryExpenseModelCopyWithImpl<CategoryExpenseModel>(
          this as CategoryExpenseModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryExpenseModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, amount, currency);

  @override
  String toString() {
    return 'CategoryExpenseModel(category: $category, amount: $amount, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $CategoryExpenseModelCopyWith<$Res> {
  factory $CategoryExpenseModelCopyWith(CategoryExpenseModel value,
          $Res Function(CategoryExpenseModel) _then) =
      _$CategoryExpenseModelCopyWithImpl;
  @useResult
  $Res call({String category, double amount, String currency});
}

/// @nodoc
class _$CategoryExpenseModelCopyWithImpl<$Res>
    implements $CategoryExpenseModelCopyWith<$Res> {
  _$CategoryExpenseModelCopyWithImpl(this._self, this._then);

  final CategoryExpenseModel _self;
  final $Res Function(CategoryExpenseModel) _then;

  /// Create a copy of CategoryExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? amount = null,
    Object? currency = null,
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
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CategoryExpenseModel implements CategoryExpenseModel {
  const _CategoryExpenseModel(
      {required this.category, required this.amount, required this.currency});

  @override
  final String category;
  @override
  final double amount;
  @override
  final String currency;

  /// Create a copy of CategoryExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryExpenseModelCopyWith<_CategoryExpenseModel> get copyWith =>
      __$CategoryExpenseModelCopyWithImpl<_CategoryExpenseModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryExpenseModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, amount, currency);

  @override
  String toString() {
    return 'CategoryExpenseModel(category: $category, amount: $amount, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$CategoryExpenseModelCopyWith<$Res>
    implements $CategoryExpenseModelCopyWith<$Res> {
  factory _$CategoryExpenseModelCopyWith(_CategoryExpenseModel value,
          $Res Function(_CategoryExpenseModel) _then) =
      __$CategoryExpenseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String category, double amount, String currency});
}

/// @nodoc
class __$CategoryExpenseModelCopyWithImpl<$Res>
    implements _$CategoryExpenseModelCopyWith<$Res> {
  __$CategoryExpenseModelCopyWithImpl(this._self, this._then);

  final _CategoryExpenseModel _self;
  final $Res Function(_CategoryExpenseModel) _then;

  /// Create a copy of CategoryExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_CategoryExpenseModel(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$TotalCategoryExpensesModel {
  List<CategoryExpenseModel> get categoryExpenses;
  double get amount;
  String get currency;

  /// Create a copy of TotalCategoryExpensesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TotalCategoryExpensesModelCopyWith<TotalCategoryExpensesModel>
      get copyWith =>
          _$TotalCategoryExpensesModelCopyWithImpl<TotalCategoryExpensesModel>(
              this as TotalCategoryExpensesModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TotalCategoryExpensesModel &&
            const DeepCollectionEquality()
                .equals(other.categoryExpenses, categoryExpenses) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(categoryExpenses), amount, currency);

  @override
  String toString() {
    return 'TotalCategoryExpensesModel(categoryExpenses: $categoryExpenses, amount: $amount, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $TotalCategoryExpensesModelCopyWith<$Res> {
  factory $TotalCategoryExpensesModelCopyWith(TotalCategoryExpensesModel value,
          $Res Function(TotalCategoryExpensesModel) _then) =
      _$TotalCategoryExpensesModelCopyWithImpl;
  @useResult
  $Res call(
      {List<CategoryExpenseModel> categoryExpenses,
      double amount,
      String currency});
}

/// @nodoc
class _$TotalCategoryExpensesModelCopyWithImpl<$Res>
    implements $TotalCategoryExpensesModelCopyWith<$Res> {
  _$TotalCategoryExpensesModelCopyWithImpl(this._self, this._then);

  final TotalCategoryExpensesModel _self;
  final $Res Function(TotalCategoryExpensesModel) _then;

  /// Create a copy of TotalCategoryExpensesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryExpenses = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
      categoryExpenses: null == categoryExpenses
          ? _self.categoryExpenses
          : categoryExpenses // ignore: cast_nullable_to_non_nullable
              as List<CategoryExpenseModel>,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _TotalCategoryExpensesModel implements TotalCategoryExpensesModel {
  const _TotalCategoryExpensesModel(
      {required final List<CategoryExpenseModel> categoryExpenses,
      required this.amount,
      required this.currency})
      : _categoryExpenses = categoryExpenses;

  final List<CategoryExpenseModel> _categoryExpenses;
  @override
  List<CategoryExpenseModel> get categoryExpenses {
    if (_categoryExpenses is EqualUnmodifiableListView)
      return _categoryExpenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryExpenses);
  }

  @override
  final double amount;
  @override
  final String currency;

  /// Create a copy of TotalCategoryExpensesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TotalCategoryExpensesModelCopyWith<_TotalCategoryExpensesModel>
      get copyWith => __$TotalCategoryExpensesModelCopyWithImpl<
          _TotalCategoryExpensesModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TotalCategoryExpensesModel &&
            const DeepCollectionEquality()
                .equals(other._categoryExpenses, _categoryExpenses) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categoryExpenses), amount, currency);

  @override
  String toString() {
    return 'TotalCategoryExpensesModel(categoryExpenses: $categoryExpenses, amount: $amount, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$TotalCategoryExpensesModelCopyWith<$Res>
    implements $TotalCategoryExpensesModelCopyWith<$Res> {
  factory _$TotalCategoryExpensesModelCopyWith(
          _TotalCategoryExpensesModel value,
          $Res Function(_TotalCategoryExpensesModel) _then) =
      __$TotalCategoryExpensesModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<CategoryExpenseModel> categoryExpenses,
      double amount,
      String currency});
}

/// @nodoc
class __$TotalCategoryExpensesModelCopyWithImpl<$Res>
    implements _$TotalCategoryExpensesModelCopyWith<$Res> {
  __$TotalCategoryExpensesModelCopyWithImpl(this._self, this._then);

  final _TotalCategoryExpensesModel _self;
  final $Res Function(_TotalCategoryExpensesModel) _then;

  /// Create a copy of TotalCategoryExpensesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryExpenses = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_TotalCategoryExpensesModel(
      categoryExpenses: null == categoryExpenses
          ? _self._categoryExpenses
          : categoryExpenses // ignore: cast_nullable_to_non_nullable
              as List<CategoryExpenseModel>,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
