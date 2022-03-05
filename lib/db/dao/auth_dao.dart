import 'package:cryptocash/db/documents/auth_document.dart';
import 'package:cryptocash/db/models/auth_login_response.dart';
import 'package:cryptocash/db/utils/network_response.dart';
import 'package:cryptocash/db/utils/transformer.dart';
import 'package:graphql/client.dart';

class AuthDao {
  GraphQLClient _client;

  AuthDao(this._client);

  Future<NetworkResponse<AuthLoginResponse>> login({
    required String phoneNumber,
    required String password,
  }) {
    final response = _client.mutate(MutationOptions(
      document: gql(AuthDocument.authLogin),
      variables: {
        'phone_number': phoneNumber,
        'password': password,
      },
    ));

    return Transformer<AuthLoginResponse>(
      future: response,
      fromJson: (json) =>
          AuthLoginResponse.fromJson(json['AuthLogin'] as Map<String, dynamic>),
    ).future!;
  }
}
