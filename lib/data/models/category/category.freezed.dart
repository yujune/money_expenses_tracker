// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoryResponse {
  List<CategoryModel> get expenseCategories;

  /// Create a copy of ExpenseCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseCategoryResponseCopyWith<ExpenseCategoryResponse> get copyWith =>
      _$ExpenseCategoryResponseCopyWithImpl<ExpenseCategoryResponse>(
          this as ExpenseCategoryResponse, _$identity);

  /// Serializes this ExpenseCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseCategoryResponse &&
            const DeepCollectionEquality()
                .equals(other.expenseCategories, expenseCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(expenseCategories));

  @override
  String toString() {
    return 'ExpenseCategoryResponse(expenseCategories: $expenseCategories)';
  }
}

/// @nodoc
abstract mixin class $ExpenseCategoryResponseCopyWith<$Res> {
  factory $ExpenseCategoryResponseCopyWith(ExpenseCategoryResponse value,
          $Res Function(ExpenseCategoryResponse) _then) =
      _$ExpenseCategoryResponseCopyWithImpl;
  @useResult
  $Res call({List<CategoryModel> expenseCategories});
}

/// @nodoc
class _$ExpenseCategoryResponseCopyWithImpl<$Res>
    implements $ExpenseCategoryResponseCopyWith<$Res> {
  _$ExpenseCategoryResponseCopyWithImpl(this._self, this._then);

  final ExpenseCategoryResponse _self;
  final $Res Function(ExpenseCategoryResponse) _then;

  /// Create a copy of ExpenseCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseCategories = null,
  }) {
    return _then(_self.copyWith(
      expenseCategories: null == expenseCategories
          ? _self.expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExpenseCategoryResponse implements ExpenseCategoryResponse {
  const _ExpenseCategoryResponse(
      {required final List<CategoryModel> expenseCategories})
      : _expenseCategories = expenseCategories;
  factory _ExpenseCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseCategoryResponseFromJson(json);

  final List<CategoryModel> _expenseCategories;
  @override
  List<CategoryModel> get expenseCategories {
    if (_expenseCategories is EqualUnmodifiableListView)
      return _expenseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseCategories);
  }

  /// Create a copy of ExpenseCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseCategoryResponseCopyWith<_ExpenseCategoryResponse> get copyWith =>
      __$ExpenseCategoryResponseCopyWithImpl<_ExpenseCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpenseCategoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseCategoryResponse &&
            const DeepCollectionEquality()
                .equals(other._expenseCategories, _expenseCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expenseCategories));

  @override
  String toString() {
    return 'ExpenseCategoryResponse(expenseCategories: $expenseCategories)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseCategoryResponseCopyWith<$Res>
    implements $ExpenseCategoryResponseCopyWith<$Res> {
  factory _$ExpenseCategoryResponseCopyWith(_ExpenseCategoryResponse value,
          $Res Function(_ExpenseCategoryResponse) _then) =
      __$ExpenseCategoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<CategoryModel> expenseCategories});
}

/// @nodoc
class __$ExpenseCategoryResponseCopyWithImpl<$Res>
    implements _$ExpenseCategoryResponseCopyWith<$Res> {
  __$ExpenseCategoryResponseCopyWithImpl(this._self, this._then);

  final _ExpenseCategoryResponse _self;
  final $Res Function(_ExpenseCategoryResponse) _then;

  /// Create a copy of ExpenseCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expenseCategories = null,
  }) {
    return _then(_ExpenseCategoryResponse(
      expenseCategories: null == expenseCategories
          ? _self._expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
mixin _$CategoryModel {
  String get name;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      _$CategoryModelCopyWithImpl<CategoryModel>(
          this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'CategoryModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) _then) =
      _$CategoryModelCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryModel implements CategoryModel {
  const _CategoryModel({required this.name});
  factory _CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @override
  final String name;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'CategoryModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) _then) =
      __$CategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_CategoryModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
