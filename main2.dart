import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("MY FIRST APP"),
              backgroundColor: Colors.lightBlue,
              centerTitle: true,
            ),
            // body: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     RowWidget(),
            //     RowWidget(),
            //     RowWidget(),
            //     RowWidget(),
            //     TextWidget(),
            //     IconWidget(),
            //     AppButton(),
            body: Center(
              child: RowWidget(),
            ),backgroundColor: Colors.black54,
        )
        );
  }
}
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("WELCOME!",style:TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen,
    ));
  }
}
class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: (){
      print("Button Pressed!");
      },
    icon:Icon(Icons.ac_unit),
    label: Text("CLICK HERE!",style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black)
    )
        );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.ac_unit_rounded,
      size:100,
      color:Colors.indigo,);
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 500,
      height: 400,
      color: Colors.red,
      child:TextWidget()
    );
  }
}
class AppImg extends StatelessWidget {
  const AppImg({super.key});

  @override
  Widget build(BuildContext context) {
    //return Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg");
    return Image.asset("images/icon1.jpg");
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          TextWidget(),
          IconWidget(),
        ],);
  }
}
