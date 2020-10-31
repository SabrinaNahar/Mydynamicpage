import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydynamic/Homepgg.dart';
import 'package:mydynamic/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Edword(),
    );
  }
}

class Edword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(

        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context, snapshot) {
          if(snapshot.hasData && snapshot.data != null){
            return HomePgg();
          }

          return LoginPage();
        }
    );




  }
}


