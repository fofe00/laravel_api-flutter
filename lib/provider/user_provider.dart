import 'package:provider/provider.dart';

class User {
  int _id;
  String _name;
  String _email;
  String _token;
  setname(name) {
    _name = name;
  }

  setEmail(email) {
    _email = email;
  }

  setToken(token) {
    _token = token;
  }

  String get name => _name;
  String get email => _email;
  String get token => _token;
}
