import 'package:flutter/material.dart';

class ScoundPage extends StatelessWidget {
  const ScoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Secound Page"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Secound Page"),
        ));
  }
}
