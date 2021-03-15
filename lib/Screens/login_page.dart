import 'package:flutter/material.dart';
import 'package:laravel_api/Screens/register_page.dart';
import 'package:laravel_api/provider/user_provider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String pwd = "";
  @override
  Widget build(BuildContext context) {
    var myUser = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 8, right: 8),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 67,
                ),
                TextFormField(
                  onChanged: (value) {
                    print(value);
                    email = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "Your Email",
                    prefixIcon: Icon(Icons.mail),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {
                    print(value);
                    pwd = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Your Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      print("login in progress");
                      Map myPost = {
                        "email": "ainix@gmail.com",
                      };
                      myPost["password"] = "fofe";

                      var test = await UserProvider().getMyUser(myPost);
                      print(test.name);
                      //Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  child: Text("Login"),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Center(child: Text("I am not a user")),
                  onTap: () {
                    print("go to register");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
