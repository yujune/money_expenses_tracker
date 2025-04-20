// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpensesFilterState {
  ExpenseSortBy? get sortBy;
  DateTime? get startDate;
  DateTime? get endDate;
  String? get category;

  /// Create a copy of ExpensesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpensesFilterStateCopyWith<ExpensesFilterState> get copyWith =>
      _$ExpensesFilterStateCopyWithImpl<ExpensesFilterState>(
          this as ExpensesFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpensesFilterState &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sortBy, startDate, endDate, category);

  @override
  String toString() {
    return 'ExpensesFilterState(sortBy: $sortBy, startDate: $startDate, endDate: $endDate, category: $category)';
  }
}

/// @nodoc
abstract mixin class $ExpensesFilterStateCopyWith<$Res> {
  factory $ExpensesFilterStateCopyWith(
          ExpensesFilterState value, $Res Function(ExpensesFilterState) _then) =
      _$ExpensesFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {ExpenseSortBy? sortBy,
      DateTime? startDate,
      DateTime? endDate,
      String? category});
}

/// @nodoc
class _$ExpensesFilterStateCopyWithImpl<$Res>
    implements $ExpensesFilterStateCopyWith<$Res> {
  _$ExpensesFilterStateCopyWithImpl(this._self, this._then);

  final ExpensesFilterState _self;
  final $Res Function(ExpensesFilterState) _then;

  /// Create a copy of ExpensesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? category = freezed,
  }) {
    return _then(_self.copyWith(
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as ExpenseSortBy?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _ExpensesFilterState extends ExpensesFilterState {
  const _ExpensesFilterState(
      {this.sortBy, this.startDate, this.endDate, this.category})
      : super._();

  @override
  final ExpenseSortBy? sortBy;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? category;

  /// Create a copy of ExpensesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpensesFilterStateCopyWith<_ExpensesFilterState> get copyWith =>
      __$ExpensesFilterStateCopyWithImpl<_ExpensesFilterState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpensesFilterState &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sortBy, startDate, endDate, category);

  @override
  String toString() {
    return 'ExpensesFilterState(sortBy: $sortBy, startDate: $startDate, endDate: $endDate, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$ExpensesFilterStateCopyWith<$Res>
    implements $ExpensesFilterStateCopyWith<$Res> {
  factory _$ExpensesFilterStateCopyWith(_ExpensesFilterState value,
          $Res Function(_ExpensesFilterState) _then) =
      __$ExpensesFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ExpenseSortBy? sortBy,
      DateTime? startDate,
      DateTime? endDate,
      String? category});
}

/// @nodoc
class __$ExpensesFilterStateCopyWithImpl<$Res>
    implements _$ExpensesFilterStateCopyWith<$Res> {
  __$ExpensesFilterStateCopyWithImpl(this._self, this._then);

  final _ExpensesFilterState _self;
  final $Res Function(_ExpensesFilterState) _then;

  /// Create a copy of ExpensesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sortBy = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? category = freezed,
  }) {
    return _then(_ExpensesFilterState(
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as ExpenseSortBy?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
