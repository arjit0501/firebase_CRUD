
import 'package:fire_crud/pages/add_student_page.dart';
import 'package:flutter/material.dart';
import 'package:fire_crud/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder( future: _initialization,
    builder: (context, snapshot) {
    // CHeck for Errors
    if (snapshot.hasError) {
    print("Something went Wrong");
    }
    // once Completed, show your application
    if (snapshot.connectionState == ConnectionState.done) {
      print('Everting is fine');
    return MaterialApp(
    title: 'Flutter Firestore CRUD',
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    );
    }else {
      return Center(child: CircularProgressIndicator());
    }
    },
    );
  }
}


