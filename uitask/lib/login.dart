import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController name = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();

  CollectionReference db =
      FirebaseFirestore.instance.collection('flutterfirstdb');

  void add_data() async {
    final user = {
      'name': name.text,
      'email': email.text,
      'password': password.text
    };
    await db.add(user);

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('User Register Successfully 😊')));

    name.clear();
    email.clear();
    password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              child: TextField(
                controller: name,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.amber,
                    size: 18,
                  ),
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white70),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              child: TextField(
                controller: email,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.envelope,
                    color: Colors.amber,
                    size: 18,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white70),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                controller: password,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.lock,
                    color: Colors.amber,
                    size: 18,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white70),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: const EdgeInsets.all(12),
                ),
                onPressed: () {
                  add_data();
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
