import 'package:flutter/material.dart';
void main() {
 runApp(StateWidget());
}

class StateWidget extends StatefulWidget {
  const StateWidget({super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('COUNTER APP',style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.pinkAccent,
        body: Center(
          child: Text("$counter",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),)
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          counter+=1;
          setState(() {});
    },
    child: Icon(Icons.add),),
      )
    );
  }
}
