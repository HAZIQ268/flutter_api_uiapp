import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fetchdata extends StatefulWidget {
  const Fetchdata({super.key});

  @override
  State<Fetchdata> createState() => _FetchdataState();
}

class _FetchdataState extends State<Fetchdata> {
  CollectionReference db =
      FirebaseFirestore.instance.collection('flutterfirstdb');

  List<Map<String, dynamic>> result = [];

  void fetchdata() async {
    var data = await db.get();
    setState(() {
      result =
          data.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    });
    print('data $data');
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

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
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Data List',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(height: 10),
              ...result.map((data) => card(data)).toList(),
            ],
          ),
        ));
  }

  Widget card(Map<String, dynamic> data) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text(data['name'] ?? 'no name'),
          subtitle: Text('${data['email']} \n Password:${data['password']}'),
        ),
      ),
    );
  }
}
