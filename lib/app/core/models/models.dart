import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class Result<L, R> with _$Result<L, R> {
  const factory Result.failure(R failure) = _Failure<L, R>;

  const factory Result.success(L data) = _Success<L, R>;
}

@freezed
class XState<T> with _$XState<T> {
  const XState._();

  const factory XState.initial() = _initial;

  const factory XState.loading() = _loading;

  const factory XState.submitted() = _submitted;

  const factory XState.data(final T data) = _success<T>;

  const factory XState.error(final String message) = _error;

  const factory XState.dataAndError(final T data, final String message) = _dataAndError<T>;

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isError => maybeWhen(error: (_) => true, orElse: () => false);

  bool get isDataAndError => maybeWhen(dataAndError: (_, __) => true, orElse: () => false);

  bool get isInitial => maybeWhen(initial: () => true, orElse: () => false);

  R? ifHasData<R>(R Function(T data) dataFunction) {
    final data = maybeWhen(
      data: (data) => data,
      dataAndError: (data, error) => data,
      orElse: () => null,
    );
    if (data != null) {
      return dataFunction(data);
    }
    return null;
  }

  void ifHasError(void Function(String errorMessage) function) {
    final error = maybeWhen(error: (error) => error, dataAndError: (data, error) => error, orElse: () => null);
    if (error != null) function(error);
  }

  void ifSubmitted(void Function() function) {
    maybeWhen(submitted: function, orElse: () => null);
  }
}

@freezed
class XFormState<T> with _$XFormState<T> {
  const XFormState._();

  const factory XFormState.draft() = _XFormStateDraft;

  const factory XFormState.loading({final T? data}) = _XFormStateLoading<T>;

  const factory XFormState.submitted(final T data) = _XFormStateSubmitted<T>;

  const factory XFormState.error(final String message) = _XFormStateError;

  bool get isLoading => maybeWhen(loading: (_) => true, orElse: () => false);

  void ifHasError(void Function(String errorMessage) function) {
    final error = maybeWhen(error: (error) => error, orElse: () => null);
    if (error != null) function(error);
  }

  R? ifSubmitted<R>(R Function(T data) dataFunction) {
    final data = maybeWhen(
      submitted: (data) => data,
      orElse: () => null,
    );
    if (data != null) {
      return dataFunction(data);
    }
    return null;
  }
}

@freezed
class ListMeta with _$ListMeta {
  const factory ListMeta({
    required int page,
    required int perPage,
    required int totalItems,
  }) = _ListMeta;
}

enum ResultErrorType {
  cancel,
  parsing,
  unauthorised, //401
  forbidden, //403
  noData, //404
  unProcessable, //422
  badConnection,
  server, //500
  other,
  uploadingFailed,
  badRequest,
  insufficientPermissions,
  operation
}
