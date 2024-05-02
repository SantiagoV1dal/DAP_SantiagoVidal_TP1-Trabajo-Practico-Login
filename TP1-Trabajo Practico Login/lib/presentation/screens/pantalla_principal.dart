import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Bienvenido', 
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 67, 5)
              )),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.person ),
                Text('User: RAMA',
              style: TextStyle(fontSize: 24),),],
               ),
               ] 

            ),
          )
          
        ),
      ),
    );}}