import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mydynamic/auth_help.dart';
import 'package:mydynamic/database.dart';


class HomePgg extends StatefulWidget {
  static const String id = "home_pgg";
  @override
  _HomePggState createState() => _HomePggState();
}

class _HomePggState extends State<HomePgg> {
  static const String id = "home_pgg";
  TextEditingController _nameController, _noteController, _timeController;

  FirebaseFirestore _ref;





  @override





  void initState(){
    super.initState();
    _nameController = TextEditingController();
    _noteController = TextEditingController();
    _timeController = TextEditingController();
    _ref = FirebaseFirestore.instance;

  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Homepage",style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,

        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),

            TextFormField(
              controller: _nameController,
              decoration:
                InputDecoration(
                  hintText: "Enter Event Name",
                  filled: true,

                )

            ),




            SizedBox(
              height: 30.0,
            ),



            TextFormField(
                controller: _noteController,
                decoration:
                InputDecoration(
                  hintText: "Enter Event Note",
                  filled: true,

                )

            ),

            SizedBox(
              height: 30.0,
            ),

            TextFormField(
                controller: _timeController,
                decoration:
                InputDecoration(
                  hintText: "Enter Event Time",
                  filled: true,

                )

            ),
            SizedBox(
              height: 40.0,
            ),

            RaisedButton(
              child: Text('SAVE'),
              onPressed: (){

              },
            ),

            RaisedButton(
                child: Text('LOG OUT',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),),
                onPressed: () {

                  AuthHelp.LogOut();
                },
              ),

          ],
        ),
      ),
    );




    }
}
