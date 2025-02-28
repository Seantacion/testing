import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/person.avif'),
              ),
            ),
            Text('Walter White', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Maharastra, IN', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
            Text('Mobile | Web | UI-UX', style: TextStyle(fontSize: 16),),

          ],
        ),
      ),
    );
  }
}