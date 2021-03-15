import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:laravel_api/helpers/http_helper.dart';
import 'package:laravel_api/model/user_model.dart';

class UserProvider with ChangeNotifier {
  UserModel myUser = UserModel();

  Future<UserModel> getMyUser(Map data) async {
    UserModel result;
    var body = await MyHttpRequest().postData("login1", data);
    result = UserModel.fromJson(json.decode(body));
    return result;
  }
}
