class Constants {
  static final cryptocurrencies = [
    CryptoCurrency(
        logoAsset: 'assets/coins/bitcoin.svg',
        shortName: 'BTC',
        name: 'Bitcoin',
        balance: 0.00002),
    CryptoCurrency(
        logoAsset: 'assets/coins/usdt.svg',
        shortName: 'USDT',
        name: 'Tether',
        balance: 43),
    CryptoCurrency(
        logoAsset: 'assets/coins/ether.svg',
        shortName: 'ETH',
        name: 'Ether',
        balance: 0.005),
  ];

  static final transactions = [
    Transaction(
      cashIn: true,
      balance: 0.2,
    ),
    Transaction(
      cashIn: false,
      balance: 0.1,
    ),
  ];
}

class Transaction {
  bool cashIn;
  String from;
  String fromAsset;
  String dateTimeString;
  double balance;
  String coinName;

  Transaction({
    required this.cashIn,
    this.from = 'Outfitters',
    this.fromAsset = 'assets/transactions/outfitters.png',
    this.dateTimeString = '3 May, 2021 at 4:54 PM',
    required this.balance,
    this.coinName = 'BTC',
  });
}

class CryptoCurrency {
  String logoAsset;
  String shortName;
  String name;
  double? balance;

  CryptoCurrency({
    required this.logoAsset,
    required this.shortName,
    required this.name,
    this.balance,
  });
}
