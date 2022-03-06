class UserDocument {
  static final insertUser = r'''
    mutation InsertUser($email: String = "", $name: String = "", $password: String = "", $phone_number: String = "", $tx_password: String = "") {
      insert_cryptocash_User(objects: {email: $email, name: $name, password: $password, phone_number: $phone_number, tx_password: $tx_password}) {
        affected_rows
      }
    }''';

  static final retrieveUser = r'''
  query RetrieveUser {
    cryptocash_User {
      phone_number
      name
      id
      email
    }
  }''';
}
