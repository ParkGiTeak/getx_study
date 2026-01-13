// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kakao_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KakaoAddressModel {

 String get addressName; double get x; double get y;
/// Create a copy of KakaoAddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KakaoAddressModelCopyWith<KakaoAddressModel> get copyWith => _$KakaoAddressModelCopyWithImpl<KakaoAddressModel>(this as KakaoAddressModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KakaoAddressModel&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}


@override
int get hashCode => Object.hash(runtimeType,addressName,x,y);

@override
String toString() {
  return 'KakaoAddressModel(addressName: $addressName, x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $KakaoAddressModelCopyWith<$Res>  {
  factory $KakaoAddressModelCopyWith(KakaoAddressModel value, $Res Function(KakaoAddressModel) _then) = _$KakaoAddressModelCopyWithImpl;
@useResult
$Res call({
 String addressName, double x, double y
});




}
/// @nodoc
class _$KakaoAddressModelCopyWithImpl<$Res>
    implements $KakaoAddressModelCopyWith<$Res> {
  _$KakaoAddressModelCopyWithImpl(this._self, this._then);

  final KakaoAddressModel _self;
  final $Res Function(KakaoAddressModel) _then;

/// Create a copy of KakaoAddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressName = null,Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
addressName: null == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [KakaoAddressModel].
extension KakaoAddressModelPatterns on KakaoAddressModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KakaoAddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KakaoAddressModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KakaoAddressModel value)  $default,){
final _that = this;
switch (_that) {
case _KakaoAddressModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KakaoAddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _KakaoAddressModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String addressName,  double x,  double y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KakaoAddressModel() when $default != null:
return $default(_that.addressName,_that.x,_that.y);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String addressName,  double x,  double y)  $default,) {final _that = this;
switch (_that) {
case _KakaoAddressModel():
return $default(_that.addressName,_that.x,_that.y);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String addressName,  double x,  double y)?  $default,) {final _that = this;
switch (_that) {
case _KakaoAddressModel() when $default != null:
return $default(_that.addressName,_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc


class _KakaoAddressModel implements KakaoAddressModel {
  const _KakaoAddressModel({required this.addressName, required this.x, required this.y});
  

@override final  String addressName;
@override final  double x;
@override final  double y;

/// Create a copy of KakaoAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KakaoAddressModelCopyWith<_KakaoAddressModel> get copyWith => __$KakaoAddressModelCopyWithImpl<_KakaoAddressModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KakaoAddressModel&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}


@override
int get hashCode => Object.hash(runtimeType,addressName,x,y);

@override
String toString() {
  return 'KakaoAddressModel(addressName: $addressName, x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$KakaoAddressModelCopyWith<$Res> implements $KakaoAddressModelCopyWith<$Res> {
  factory _$KakaoAddressModelCopyWith(_KakaoAddressModel value, $Res Function(_KakaoAddressModel) _then) = __$KakaoAddressModelCopyWithImpl;
@override @useResult
$Res call({
 String addressName, double x, double y
});




}
/// @nodoc
class __$KakaoAddressModelCopyWithImpl<$Res>
    implements _$KakaoAddressModelCopyWith<$Res> {
  __$KakaoAddressModelCopyWithImpl(this._self, this._then);

  final _KakaoAddressModel _self;
  final $Res Function(_KakaoAddressModel) _then;

/// Create a copy of KakaoAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressName = null,Object? x = null,Object? y = null,}) {
  return _then(_KakaoAddressModel(
addressName: null == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
