import 'dart:async';

import 'package:cryptocash/db/utils/error.dart';
import 'package:cryptocash/db/utils/network_response.dart';
import 'package:graphql/client.dart';

class Transformer<T> {
  Stream<T>? stream;
  Future<NetworkResponse<T>>? future;

  Transformer({
    Stream<QueryResult>? stream,
    Future<QueryResult>? future,
    required T Function(Map<String, dynamic>) fromJson,
  }) {
    if (stream != null)
      this.stream = stream.transform(
        StreamTransformer<QueryResult, T>.fromHandlers(
            handleData: (result, sink) {
          if (result.data != null) {
            try {
              sink.add(fromJson(result.data!));
            } catch (e) {
              sink.addError(
                TransformerError<QueryResult>(
                  errorMessage: 'Response could be parsed',
                  result: result,
                ),
              );
            }
          }
        }, handleError: (error, stackTrace, sink) {
          sink.addError(
            TransformerError<StackTrace>(
              errorMessage: error.toString(),
              result: stackTrace,
            ),
          );
        }),
      );

    if (future != null)
      this.future = future.then(
        (result) {
          // print("Query result: ${result.data}");
          if (result.data != null) {
            final parsedJson = fromJson(result.data!);
            if (parsedJson != null)
              return NetworkResponse<T>(
                data: fromJson(result.data!),
              );
            else
              return NetworkResponse<T>(
                error: TransformerError<QueryResult>(
                  errorMessage: 'Response could not be parsed',
                  result: result,
                ),
              );
          }
          return NetworkResponse<T>(
            error: TransformerError<QueryResult>(
              errorMessage: result.exception!.graphqlErrors.first.message,
              result: result,
            ),
          );
        },
      );
  }
}
