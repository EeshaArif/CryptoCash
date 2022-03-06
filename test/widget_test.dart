// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:cryptocash/db/db.dart';
import 'package:cryptocash/db/models/mutation_response.dart';
import 'package:test/test.dart';

String generateRandomString(int len) {
  var r = Random();
  const _chars = '1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}

void main() {
  group('DB Package', () {
    final db = DB(
      endpoint: 'localhost:8080/v1/graphql',
      secured: false,
      cacheId: 'test',
    );

    test('create user', () async {
      final user = User(
        name: 'Test',
        phoneNumber: generateRandomString(11),
        email: 'test',
        password: 'test',
      );

      final createUserRes = await db.userDao.insertUser(
        user: user,
      );

      expect(createUserRes.error, null);
      expect(
        createUserRes.data!.toJson(),
        MutationResponse(affectedRows: 1).toJson(),
      );

      await Future.delayed(const Duration(seconds: 1));

      final authLoginRes = await db.authDao.login(
        phoneNumber: user.phoneNumber,
        password: user.password!,
      );
      expect(authLoginRes.error, null);
      expect(authLoginRes.data!.statusCode, 200);
      expect(
          authLoginRes.data!.message, 'user has been logged in successfully');

      await db.authenticate(token: authLoginRes.data!.accessToken);

      final retrieveUserRes = await db.userDao.retrieveUser();
      expect(retrieveUserRes.error, null);
      expect(retrieveUserRes.data!.email, user.email);
      expect(retrieveUserRes.data!.phoneNumber, user.phoneNumber);
      expect(retrieveUserRes.data!.name, user.name);

      final authUser = retrieveUserRes.data!;

      final retrieveWalletByUserIdRes =
          await db.walletDao.retrieveWalletByUserId(
        userId: authUser.id!,
      );
      expect(retrieveWalletByUserIdRes.error, null);
      expect(retrieveWalletByUserIdRes.data!.toJson(),
          retrieveWalletByUserIdRes.data!.toJson());
    });
  });
}
