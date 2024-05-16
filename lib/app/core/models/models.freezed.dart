// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<L, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R failure) failure,
    required TResult Function(L data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R failure)? failure,
    TResult? Function(L data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R failure)? failure,
    TResult Function(L data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure<L, R> value) failure,
    required TResult Function(_Success<L, R> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure<L, R> value)? failure,
    TResult? Function(_Success<L, R> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure<L, R> value)? failure,
    TResult Function(_Success<L, R> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<L, R, $Res> {
  factory $ResultCopyWith(
          Result<L, R> value, $Res Function(Result<L, R>) then) =
      _$ResultCopyWithImpl<L, R, $Res, Result<L, R>>;
}

/// @nodoc
class _$ResultCopyWithImpl<L, R, $Res, $Val extends Result<L, R>>
    implements $ResultCopyWith<L, R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<L, R, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<L, R> value, $Res Function(_$FailureImpl<L, R>) then) =
      __$$FailureImplCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({R failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<L, R, $Res>
    extends _$ResultCopyWithImpl<L, R, $Res, _$FailureImpl<L, R>>
    implements _$$FailureImplCopyWith<L, R, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<L, R> _value, $Res Function(_$FailureImpl<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$FailureImpl<L, R>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$FailureImpl<L, R> implements _Failure<L, R> {
  const _$FailureImpl(this.failure);

  @override
  final R failure;

  @override
  String toString() {
    return 'Result<$L, $R>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<L, R> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<L, R, _$FailureImpl<L, R>> get copyWith =>
      __$$FailureImplCopyWithImpl<L, R, _$FailureImpl<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R failure) failure,
    required TResult Function(L data) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R failure)? failure,
    TResult? Function(L data)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R failure)? failure,
    TResult Function(L data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure<L, R> value) failure,
    required TResult Function(_Success<L, R> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure<L, R> value)? failure,
    TResult? Function(_Success<L, R> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure<L, R> value)? failure,
    TResult Function(_Success<L, R> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<L, R> implements Result<L, R> {
  const factory _Failure(final R failure) = _$FailureImpl<L, R>;

  R get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<L, R, _$FailureImpl<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<L, R, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<L, R> value, $Res Function(_$SuccessImpl<L, R>) then) =
      __$$SuccessImplCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({L data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<L, R, $Res>
    extends _$ResultCopyWithImpl<L, R, $Res, _$SuccessImpl<L, R>>
    implements _$$SuccessImplCopyWith<L, R, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<L, R> _value, $Res Function(_$SuccessImpl<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<L, R>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as L,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<L, R> implements _Success<L, R> {
  const _$SuccessImpl(this.data);

  @override
  final L data;

  @override
  String toString() {
    return 'Result<$L, $R>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<L, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<L, R, _$SuccessImpl<L, R>> get copyWith =>
      __$$SuccessImplCopyWithImpl<L, R, _$SuccessImpl<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R failure) failure,
    required TResult Function(L data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R failure)? failure,
    TResult? Function(L data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R failure)? failure,
    TResult Function(L data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure<L, R> value) failure,
    required TResult Function(_Success<L, R> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure<L, R> value)? failure,
    TResult? Function(_Success<L, R> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure<L, R> value)? failure,
    TResult Function(_Success<L, R> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<L, R> implements Result<L, R> {
  const factory _Success(final L data) = _$SuccessImpl<L, R>;

  L get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<L, R, _$SuccessImpl<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$XState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XStateCopyWith<T, $Res> {
  factory $XStateCopyWith(XState<T> value, $Res Function(XState<T>) then) =
      _$XStateCopyWithImpl<T, $Res, XState<T>>;
}

/// @nodoc
class _$XStateCopyWithImpl<T, $Res, $Val extends XState<T>>
    implements $XStateCopyWith<T, $Res> {
  _$XStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialImplCopyWith<T, $Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl<T> value, $Res Function(_$initialImpl<T>) then) =
      __$$initialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$initialImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$initialImpl<T>>
    implements _$$initialImplCopyWith<T, $Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl<T> _value, $Res Function(_$initialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialImpl<T> extends _initial<T> {
  const _$initialImpl() : super._();

  @override
  String toString() {
    return 'XState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial<T> extends XState<T> {
  const factory _initial() = _$initialImpl<T>;
  const _initial._() : super._();
}

/// @nodoc
abstract class _$$loadingImplCopyWith<T, $Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl<T> value, $Res Function(_$loadingImpl<T>) then) =
      __$$loadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$loadingImpl<T>>
    implements _$$loadingImplCopyWith<T, $Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl<T> _value, $Res Function(_$loadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl<T> extends _loading<T> {
  const _$loadingImpl() : super._();

  @override
  String toString() {
    return 'XState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading<T> extends XState<T> {
  const factory _loading() = _$loadingImpl<T>;
  const _loading._() : super._();
}

/// @nodoc
abstract class _$$submittedImplCopyWith<T, $Res> {
  factory _$$submittedImplCopyWith(
          _$submittedImpl<T> value, $Res Function(_$submittedImpl<T>) then) =
      __$$submittedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$submittedImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$submittedImpl<T>>
    implements _$$submittedImplCopyWith<T, $Res> {
  __$$submittedImplCopyWithImpl(
      _$submittedImpl<T> _value, $Res Function(_$submittedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$submittedImpl<T> extends _submitted<T> {
  const _$submittedImpl() : super._();

  @override
  String toString() {
    return 'XState<$T>.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$submittedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _submitted<T> extends XState<T> {
  const factory _submitted() = _$submittedImpl<T>;
  const _submitted._() : super._();
}

/// @nodoc
abstract class _$$successImplCopyWith<T, $Res> {
  factory _$$successImplCopyWith(
          _$successImpl<T> value, $Res Function(_$successImpl<T>) then) =
      __$$successImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$successImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$successImpl<T>>
    implements _$$successImplCopyWith<T, $Res> {
  __$$successImplCopyWithImpl(
      _$successImpl<T> _value, $Res Function(_$successImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$successImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$successImpl<T> extends _success<T> {
  const _$successImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'XState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<T, _$successImpl<T>> get copyWith =>
      __$$successImplCopyWithImpl<T, _$successImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _success<T> extends XState<T> {
  const factory _success(final T data) = _$successImpl<T>;
  const _success._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<T, _$successImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<T, $Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl<T> value, $Res Function(_$errorImpl<T>) then) =
      __$$errorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$errorImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$errorImpl<T>>
    implements _$$errorImplCopyWith<T, $Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl<T> _value, $Res Function(_$errorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$errorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$errorImpl<T> extends _error<T> {
  const _$errorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'XState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<T, _$errorImpl<T>> get copyWith =>
      __$$errorImplCopyWithImpl<T, _$errorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error<T> extends XState<T> {
  const factory _error(final String message) = _$errorImpl<T>;
  const _error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$errorImplCopyWith<T, _$errorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$dataAndErrorImplCopyWith<T, $Res> {
  factory _$$dataAndErrorImplCopyWith(_$dataAndErrorImpl<T> value,
          $Res Function(_$dataAndErrorImpl<T>) then) =
      __$$dataAndErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, String message});
}

/// @nodoc
class __$$dataAndErrorImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$dataAndErrorImpl<T>>
    implements _$$dataAndErrorImplCopyWith<T, $Res> {
  __$$dataAndErrorImplCopyWithImpl(
      _$dataAndErrorImpl<T> _value, $Res Function(_$dataAndErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$dataAndErrorImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$dataAndErrorImpl<T> extends _dataAndError<T> {
  const _$dataAndErrorImpl(this.data, this.message) : super._();

  @override
  final T data;
  @override
  final String message;

  @override
  String toString() {
    return 'XState<$T>.dataAndError(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$dataAndErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$dataAndErrorImplCopyWith<T, _$dataAndErrorImpl<T>> get copyWith =>
      __$$dataAndErrorImplCopyWithImpl<T, _$dataAndErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
    required TResult Function(T data, String message) dataAndError,
  }) {
    return dataAndError(this.data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
    TResult? Function(T data, String message)? dataAndError,
  }) {
    return dataAndError?.call(this.data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    TResult Function(T data, String message)? dataAndError,
    required TResult orElse(),
  }) {
    if (dataAndError != null) {
      return dataAndError(this.data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return dataAndError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return dataAndError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (dataAndError != null) {
      return dataAndError(this);
    }
    return orElse();
  }
}

abstract class _dataAndError<T> extends XState<T> {
  const factory _dataAndError(final T data, final String message) =
      _$dataAndErrorImpl<T>;
  const _dataAndError._() : super._();

  T get data;
  String get message;
  @JsonKey(ignore: true)
  _$$dataAndErrorImplCopyWith<T, _$dataAndErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$XFormState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XFormStateCopyWith<T, $Res> {
  factory $XFormStateCopyWith(
          XFormState<T> value, $Res Function(XFormState<T>) then) =
      _$XFormStateCopyWithImpl<T, $Res, XFormState<T>>;
}

/// @nodoc
class _$XFormStateCopyWithImpl<T, $Res, $Val extends XFormState<T>>
    implements $XFormStateCopyWith<T, $Res> {
  _$XFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$XFormStateDraftImplCopyWith<T, $Res> {
  factory _$$XFormStateDraftImplCopyWith(_$XFormStateDraftImpl<T> value,
          $Res Function(_$XFormStateDraftImpl<T>) then) =
      __$$XFormStateDraftImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$XFormStateDraftImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateDraftImpl<T>>
    implements _$$XFormStateDraftImplCopyWith<T, $Res> {
  __$$XFormStateDraftImplCopyWithImpl(_$XFormStateDraftImpl<T> _value,
      $Res Function(_$XFormStateDraftImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$XFormStateDraftImpl<T> extends _XFormStateDraft<T> {
  const _$XFormStateDraftImpl() : super._();

  @override
  String toString() {
    return 'XFormState<$T>.draft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$XFormStateDraftImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(String message) error,
  }) {
    return draft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(String message)? error,
  }) {
    return draft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return draft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return draft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft(this);
    }
    return orElse();
  }
}

abstract class _XFormStateDraft<T> extends XFormState<T> {
  const factory _XFormStateDraft() = _$XFormStateDraftImpl<T>;
  const _XFormStateDraft._() : super._();
}

/// @nodoc
abstract class _$$XFormStateLoadingImplCopyWith<T, $Res> {
  factory _$$XFormStateLoadingImplCopyWith(_$XFormStateLoadingImpl<T> value,
          $Res Function(_$XFormStateLoadingImpl<T>) then) =
      __$$XFormStateLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$XFormStateLoadingImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateLoadingImpl<T>>
    implements _$$XFormStateLoadingImplCopyWith<T, $Res> {
  __$$XFormStateLoadingImplCopyWithImpl(_$XFormStateLoadingImpl<T> _value,
      $Res Function(_$XFormStateLoadingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$XFormStateLoadingImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$XFormStateLoadingImpl<T> extends _XFormStateLoading<T> {
  const _$XFormStateLoadingImpl({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'XFormState<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XFormStateLoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XFormStateLoadingImplCopyWith<T, _$XFormStateLoadingImpl<T>>
      get copyWith =>
          __$$XFormStateLoadingImplCopyWithImpl<T, _$XFormStateLoadingImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(String message) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _XFormStateLoading<T> extends XFormState<T> {
  const factory _XFormStateLoading({final T? data}) =
      _$XFormStateLoadingImpl<T>;
  const _XFormStateLoading._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$XFormStateLoadingImplCopyWith<T, _$XFormStateLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XFormStateSubmittedImplCopyWith<T, $Res> {
  factory _$$XFormStateSubmittedImplCopyWith(_$XFormStateSubmittedImpl<T> value,
          $Res Function(_$XFormStateSubmittedImpl<T>) then) =
      __$$XFormStateSubmittedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$XFormStateSubmittedImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateSubmittedImpl<T>>
    implements _$$XFormStateSubmittedImplCopyWith<T, $Res> {
  __$$XFormStateSubmittedImplCopyWithImpl(_$XFormStateSubmittedImpl<T> _value,
      $Res Function(_$XFormStateSubmittedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$XFormStateSubmittedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$XFormStateSubmittedImpl<T> extends _XFormStateSubmitted<T> {
  const _$XFormStateSubmittedImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'XFormState<$T>.submitted(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XFormStateSubmittedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XFormStateSubmittedImplCopyWith<T, _$XFormStateSubmittedImpl<T>>
      get copyWith => __$$XFormStateSubmittedImplCopyWithImpl<T,
          _$XFormStateSubmittedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(String message) error,
  }) {
    return submitted(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(String message)? error,
  }) {
    return submitted?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _XFormStateSubmitted<T> extends XFormState<T> {
  const factory _XFormStateSubmitted(final T data) =
      _$XFormStateSubmittedImpl<T>;
  const _XFormStateSubmitted._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$XFormStateSubmittedImplCopyWith<T, _$XFormStateSubmittedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XFormStateErrorImplCopyWith<T, $Res> {
  factory _$$XFormStateErrorImplCopyWith(_$XFormStateErrorImpl<T> value,
          $Res Function(_$XFormStateErrorImpl<T>) then) =
      __$$XFormStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$XFormStateErrorImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateErrorImpl<T>>
    implements _$$XFormStateErrorImplCopyWith<T, $Res> {
  __$$XFormStateErrorImplCopyWithImpl(_$XFormStateErrorImpl<T> _value,
      $Res Function(_$XFormStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$XFormStateErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$XFormStateErrorImpl<T> extends _XFormStateError<T> {
  const _$XFormStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'XFormState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XFormStateErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XFormStateErrorImplCopyWith<T, _$XFormStateErrorImpl<T>> get copyWith =>
      __$$XFormStateErrorImplCopyWithImpl<T, _$XFormStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _XFormStateError<T> extends XFormState<T> {
  const factory _XFormStateError(final String message) =
      _$XFormStateErrorImpl<T>;
  const _XFormStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$XFormStateErrorImplCopyWith<T, _$XFormStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListMeta {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListMetaCopyWith<ListMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMetaCopyWith<$Res> {
  factory $ListMetaCopyWith(ListMeta value, $Res Function(ListMeta) then) =
      _$ListMetaCopyWithImpl<$Res, ListMeta>;
  @useResult
  $Res call({int page, int perPage, int totalItems});
}

/// @nodoc
class _$ListMetaCopyWithImpl<$Res, $Val extends ListMeta>
    implements $ListMetaCopyWith<$Res> {
  _$ListMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalItems = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListMetaImplCopyWith<$Res>
    implements $ListMetaCopyWith<$Res> {
  factory _$$ListMetaImplCopyWith(
          _$ListMetaImpl value, $Res Function(_$ListMetaImpl) then) =
      __$$ListMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int perPage, int totalItems});
}

/// @nodoc
class __$$ListMetaImplCopyWithImpl<$Res>
    extends _$ListMetaCopyWithImpl<$Res, _$ListMetaImpl>
    implements _$$ListMetaImplCopyWith<$Res> {
  __$$ListMetaImplCopyWithImpl(
      _$ListMetaImpl _value, $Res Function(_$ListMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalItems = null,
  }) {
    return _then(_$ListMetaImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListMetaImpl implements _ListMeta {
  const _$ListMetaImpl(
      {required this.page, required this.perPage, required this.totalItems});

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalItems;

  @override
  String toString() {
    return 'ListMeta(page: $page, perPage: $perPage, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListMetaImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListMetaImplCopyWith<_$ListMetaImpl> get copyWith =>
      __$$ListMetaImplCopyWithImpl<_$ListMetaImpl>(this, _$identity);
}

abstract class _ListMeta implements ListMeta {
  const factory _ListMeta(
      {required final int page,
      required final int perPage,
      required final int totalItems}) = _$ListMetaImpl;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalItems;
  @override
  @JsonKey(ignore: true)
  _$$ListMetaImplCopyWith<_$ListMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
