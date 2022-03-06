class WalletDocument {
  static final subscribeWalletByUserId = r'''
  subscription subscribeWalletByUserId($user_id: uuid = "") {
    cryptocash_Wallet(where: {user_id: {_eq: $user_id}}) {
      WalletCoins {
        balance
        coin_id
        id
        wallet_id
        Coin {
          exchange_to_vpkr
          id
          name
          short_name
        }
      }
      id
      user_id
      address
    }
  }''';

  static final retrieveWalletByUserId = r'''
  query retrieveWalletByUserId($user_id: uuid = "") {
    cryptocash_Wallet(where: {user_id: {_eq: $user_id}}) {
      WalletCoins {
        balance
        coin_id
        id
        wallet_id
        Coin {
          exchange_to_vpkr
          id
          name
          short_name
        }
      }
      id
      user_id
      address
    }
  }''';
}
