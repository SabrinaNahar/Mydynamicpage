import 'package:flutter/material.dart';
import 'package:mydynamic/loginpage.dart';
import 'package:mydynamic/regpage.dart';
import 'package:mydynamic/homepage.dart';


class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent[200],
        title: Text('WELCOME to HOME PAGE',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.pink[200],
        ),),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0.0),
            child: Text('TO ENTER THE APP YOU SHOULD BE REGISTERED/ LOGGED IN',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],

            ),),
          ),
          SizedBox(height: 20.0),
          Image.asset('assets/clock.jpg'),
          SizedBox(height: 20.0),

          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginPage.id);
            },
            child: Text("LOG IN",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,

            ),),
          ),

          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, RegPage.id);
            },
            child: Text("REGISTER ME",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),),
          )
        ],

      )











    );
  }
}
