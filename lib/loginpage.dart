import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fromKey = GlobalKey<FormState>();

  final backgroundColor = Color(0xFFE7ECEF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input & Validation In Flutter"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _fromKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Log in",
                          style: TextStyle(
                              fontFamily: "ShadowsIntoLight",
                              color: Colors.deepPurpleAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              iconColor: Colors.deepPurpleAccent,
                              labelText: "Name",
                              labelStyle: TextStyle(
                                  fontFamily: "ShadowsIntoLight",
                                  color: Colors.greenAccent),
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.pinkAccent),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plzzz enter your Name";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              iconColor: Colors.deepPurpleAccent,
                              labelText: "Email",
                              labelStyle: TextStyle(
                                  fontFamily: "ShadowsIntoLight",
                                  color: Colors.greenAccent),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.pinkAccent),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plzzz Enter your Email";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              iconColor: Colors.deepPurpleAccent,
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                  fontFamily: "ShadowsIntoLight",
                                  color: Colors.greenAccent),
                              hintText: "Phone Number",
                              hintStyle: TextStyle(color: Colors.pinkAccent),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plzzz Enter your Phone Number";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              iconColor: Colors.deepPurpleAccent,
                              labelText: "Address",
                              labelStyle: TextStyle(
                                  fontFamily: "ShadowsIntoLight",
                                  color: Colors.greenAccent),
                              hintText: "Address",
                              hintStyle: TextStyle(color: Colors.pinkAccent),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plzzz enter your Address";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              iconColor: Colors.deepPurpleAccent,
                              labelText: "Age",
                              labelStyle: TextStyle(
                                  fontFamily: "ShadowsIntoLight",
                                  color: Colors.greenAccent),
                              hintText: "Age",
                              hintStyle: TextStyle(color: Colors.pinkAccent),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plzzz enter your Age";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_fromKey.currentState!.validate()) {
                            Navigator.pushNamed(context, "/secoud");
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 15,
                                    color: Colors.white,
                                    offset: Offset(-10, -10)),
                                BoxShadow(
                                    blurRadius: 15,
                                    color: Color(0xFFA7A9AF),
                                    offset: Offset(10, 10))
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: const SizedBox(
                            height: 50,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Log In",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
