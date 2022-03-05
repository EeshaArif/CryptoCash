import 'package:cryptocash/db/utils/error.dart';

class NetworkResponse<T> {
  T? data;
  TransformerError? error;

  NetworkResponse({this.data, this.error});

  bool get success => error == null;
}
