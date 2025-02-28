import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_suryacipta/components/footer.dart';
import 'package:test_suryacipta/components/header.dart';
import 'package:test_suryacipta/pages/crud.dart';
import 'package:test_suryacipta/pages/local_storage.dart';
import 'package:test_suryacipta/pages/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(title: 'Home', icon: Icons.home),
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Center(
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FetchDataPage()));
                  },
                  child: const Text('Fetching'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserListScreen()));
                  },
                  child: const Text('CRUD'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
        Footer(text: "Home")
      ]
    );
  }
}