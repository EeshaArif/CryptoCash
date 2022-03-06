import 'package:cryptocash/db/db.dart';
import 'package:cryptocash/db/documents/user_document.dart';
import 'package:cryptocash/db/models/mutation_response.dart';
import 'package:cryptocash/db/utils/network_response.dart';
import 'package:cryptocash/db/utils/transformer.dart';
import 'package:graphql/client.dart';

class UserDao {
  GraphQLClient _client;

  UserDao(this._client);

  Future<NetworkResponse<MutationResponse>> insertUser({required User user}) {
    final response = _client.mutate(MutationOptions(
      document: gql(UserDocument.insertUser),
      variables: user.toJson(),
    ));

    return Transformer<MutationResponse>(
      future: response,
      fromJson: (json) => MutationResponse.fromJson(
        json['insert_cryptocash_User'] as Map<String, dynamic>,
      ),
    ).future!;
  }

  // Auth protected
  Future<NetworkResponse<User>> retrieveUser() {
    final response = _client.query(QueryOptions(
      document: gql(UserDocument.retrieveUser),
    ));

    return Transformer<User>(
      future: response,
      fromJson: (json) => User.fromJson(
        json['cryptocash_User'][0] as Map<String, dynamic>,
      ),
    ).future!;
  }
}
