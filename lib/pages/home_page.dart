import 'package:flutter/material.dart';

import 'package:fire_crud/pages/add_student_page.dart';
import 'package:fire_crud/pages/list_student_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Flutter Firebase CRUD'),
            ElevatedButton(
                onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> AddStudentPage()
                      )
                  );
                } ,
                child: Text('Add' ,
                style: TextStyle(
                  fontSize: 30
                ),),
            style: ElevatedButton.styleFrom(primary: Colors.deepPurple),)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      body: ListStudentPage(),
    );
  }
}
