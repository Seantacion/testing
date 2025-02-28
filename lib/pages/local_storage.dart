import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(home: FetchDataPage()));
}

class FetchDataPage extends StatefulWidget {
  @override
  _FetchDataPageState createState() => _FetchDataPageState();
}

class _FetchDataPageState extends State<FetchDataPage> {
  List<dynamic> users = [{'name': 'John Doe', 'address': '123 Main'},{'name': 'Donnjonn', 'address': '321 Main'}];

  // Future<void> fetchData() async {
  //   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       users = jsonDecode(response.body);
  //     });
  //   } else {
  //     throw Exception("Failed to load data");
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fetch API Example")),
      body: users.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    children: [
                      Text(users[index]['name']),
                      Text(users[index]['name']),
                    ],
                  ),
                  subtitle: Text(users[index]['address']),
                );
              },
            ),
    );
  }
}
