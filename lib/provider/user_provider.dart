import 'package:provider/provider.dart';

class User {
  String _name;
  String _email;
  String _token;
  int _id;
  setname(name) {
    _name = name;
  }

  setEmail(email) {
    _email = email;
  }

  setToken(token) {
    _token = token;
  }
}
