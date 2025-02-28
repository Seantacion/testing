import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final IconData icon;
  const Header({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: Colors.white, size: 40),
                      SizedBox(width: 10,),
                      Text(title, style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            );
  }
}