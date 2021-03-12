import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            print("at home");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Text("my home page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("onpressed floattingB");
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
