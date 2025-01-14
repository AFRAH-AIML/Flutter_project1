import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PAGE1'),backgroundColor: Colors.pinkAccent,centerTitle: true,),
      body: Center(
        child: Text('THIS IS PAGE1',style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.pinkAccent
        ),),
      ),
    );
  }
}
