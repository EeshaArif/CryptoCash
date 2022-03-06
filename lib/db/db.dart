import 'dart:async';

import 'package:cryptocash/db/dao/auth_dao.dart';
import 'package:cryptocash/db/dao/user_dao.dart';
import 'package:cryptocash/db/dao/wallet_dao.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

export 'package:cryptocash/db/dao/auth_dao.dart';
export 'package:cryptocash/db/dao/user_dao.dart';
export 'package:cryptocash/db/models/coin.dart';
export 'package:cryptocash/db/models/transaction.dart';
export 'package:cryptocash/db/models/user.dart';
export 'package:cryptocash/db/models/wallet.dart';
export 'package:cryptocash/db/models/wallet_coin.dart';

class DB {
  late UserDao userDao;
  late AuthDao authDao;
  late WalletDao walletDao;

  late GraphQLClient _client;

  late String _graphQLHttpEndpoint;
  late String _graphQLWsEndpoint;

  BehaviorSubject<bool> _isAuthenticatedStreamController =
      BehaviorSubject.seeded(false);

  Stream<bool> get isAuthenticatedStream {
    if (_isAuthenticatedStreamController.hasListener)
      throw Exception('Authentication Stream can only be listened to once');
    return _isAuthenticatedStreamController.stream;
  }

  bool get isAuthenticated => _isAuthenticatedStreamController.value;

  DB({
    required String endpoint,
    String? cacheId,
    bool secured = true,
  }) {
    final httpProtocol = secured ? 'https' : 'http';
    final wsProtocol = secured ? 'wss' : 'ws';

    _graphQLHttpEndpoint = '$httpProtocol://$endpoint';
    _graphQLWsEndpoint = '$wsProtocol://$endpoint';

    _initialize(cacheId: cacheId);
  }

  Future<void> _initialize({String? token, String? cacheId}) async {
    await _initializeClients(token: token, cacheId: cacheId);
    _initializeDao();

    // Placed after initialization to trigger only when complete
    final _isAuthenticated = token != null;
    _isAuthenticatedStreamController.add(_isAuthenticated);
  }

  Future<void> _initializeClients({String? token, String? cacheId}) async {
    final Map<String, String> defaultHeaders =
        token == null ? {} : {'Authorization': 'Bearer $token'};

    final _httpLink = HttpLink(
      _graphQLHttpEndpoint,
      defaultHeaders: defaultHeaders,
    );

    final _wsLink = WebSocketLink(
      _graphQLWsEndpoint,
      config: SocketClientConfig(
        initialPayload: {
          'headers': defaultHeaders,
        },
      ),
    );

    final _link = Link.split(
      (request) => request.isSubscription,
      _wsLink,
      _httpLink,
    );

    _client = GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: _link,
    );
  }

  void _initializeDao() {
    authDao = AuthDao(_client);
    userDao = UserDao(_client);
    walletDao = WalletDao(_client);
  }

  Future<void> authenticate({required String token}) async {
    await _initialize(token: token);
  }

  Future<void> logout() async {
    await _initialize();
  }
}
