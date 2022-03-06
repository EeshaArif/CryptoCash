import 'package:cryptocash/db/documents/wallet_document.dart';
import 'package:cryptocash/db/models/wallet.dart';
import 'package:cryptocash/db/utils/network_response.dart';
import 'package:cryptocash/db/utils/transformer.dart';
import 'package:graphql/client.dart';

class WalletDao {
  GraphQLClient _client;

  WalletDao(this._client);

  // Auth protected
  Stream<Wallet> subscribeWalletByUserId({required String userId}) {
    final response = _client.subscribe(SubscriptionOptions(
      document: gql(WalletDocument.subscribeWalletByUserId),
      variables: {'user_id': userId},
    ));

    return Transformer<Wallet>(
      stream: response,
      fromJson: (json) => Wallet.fromJson(
        json['cryptocash_Wallet'][0] as Map<String, dynamic>,
      ),
    ).stream!;
  }

  Future<NetworkResponse<Wallet>> retrieveWalletByUserId(
      {required String userId}) {
    final response = _client.query(QueryOptions(
      document: gql(WalletDocument.retrieveWalletByUserId),
      variables: {'user_id': userId},
    ));

    return Transformer<Wallet>(
      future: response,
      fromJson: (json) => Wallet.fromJson(
        json['cryptocash_Wallet'][0] as Map<String, dynamic>,
      ),
    ).future!;
  }
}
