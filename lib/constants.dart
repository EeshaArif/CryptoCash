class Constants {
  static final cryptocurrencies = [
    CryptoCurrency(
        logoAsset: 'assets/coins/bitcoin.svg',
        shortName: 'BTC',
        name: 'Bitcoin',
        balance: 0.00002,
        conversionRate: 50000),
    CryptoCurrency(
        logoAsset: 'assets/coins/usdt.svg',
        shortName: 'USDT',
        name: 'Tether',
        balance: 43,
        conversionRate: 200),
    CryptoCurrency(
        logoAsset: 'assets/coins/ether.svg',
        shortName: 'ETH',
        name: 'Ether',
        balance: 0.005,
        conversionRate: 20000),
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

  static final notifications = [
    C2Notification(
      inFlow: false,
      coinName: 'vPKR',
    ),
    C2Notification(
      inFlow: false,
      coinName: 'vPKR',
    ),
    C2Notification(
      inFlow: true,
      coinName: 'vPKR',
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

class C2Notification {
  bool inFlow;
  String transactor;
  String dateTimeString;
  double balance;
  String coinName;

  C2Notification({
    required this.inFlow,
    this.transactor = 'CPC c3 Service',
    this.dateTimeString = '3 May, 2021 at 4:54 PM',
    this.balance = 10.0,
    required this.coinName,
  });
}

class CryptoCurrency {
  String logoAsset;
  String shortName;
  String name;
  double conversionRate;
  double? balance;

  CryptoCurrency({
    required this.logoAsset,
    required this.shortName,
    required this.name,
    required this.conversionRate,
    this.balance,
  });
}
