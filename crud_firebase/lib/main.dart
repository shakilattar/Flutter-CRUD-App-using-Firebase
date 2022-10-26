import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        //checking for error
        if (snapshot.hasError) {
          print('Something went wrong');
        }
        //once completed show app
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Flutter FireStore CRUD',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
