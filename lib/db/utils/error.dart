abstract class DBError<T> {
  String errorMessage;
  T result;

  DBError({required this.errorMessage, required this.result});

  @override
  String toString() {
    return 'Error message: $errorMessage\nResult: $result\n';
  }
}

class TransformerError<T> extends DBError<T> {
  TransformerError({required String errorMessage, required T result})
      : super(errorMessage: errorMessage, result: result);
}