import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
        body: Container(
          child: Column(
            children: [
              Text(
                'Data List',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ...result.map((data) => card(data)).toList(),
            ],
          ),
        ));
  }

  Widget card(Map<String, dynamic> data) {
    return Card(
      child: ListTile(
        title: Text(data['name'] ?? 'no name'),
        subtitle: Text('${data['email']} \n Password:${data['password']}'),
      ),
    );
  }
}
