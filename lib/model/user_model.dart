class UserModel {
  final String name;
  final String email;
  final String pwd;

  UserModel({this.name, this.email, this.pwd});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'], email: json['email'], pwd: json['password']);
  }
}
