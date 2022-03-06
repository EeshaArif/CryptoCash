class AuthDocument {
  static final authLogin = r'''
  mutation AuthLogin($password: String = "", $phone_number: String = "") {
    AuthLogin(password: $password, phone_number: $phone_number) {
      accessToken
      message
      statusCode
    }
  }
  ''';
}
