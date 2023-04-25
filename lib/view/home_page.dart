import 'package:flutter/material.dart';

import 'add_student.dart';
import 'list_student.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Fire Store"),
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddStudent()));
            }, child: Icon(Icons.add))
          ],
        ),
      ),
      body: ListStudent() ,
    );
  }
}
