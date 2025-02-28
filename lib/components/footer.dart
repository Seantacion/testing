import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String text;
  const Footer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text),
                ],
              ),
            );
  }
}