import 'package:flutter/material.dart';
import 'package:mydynamic/Homepgg.dart';
import 'package:mydynamic/auth_help.dart';

class LoginPage extends StatefulWidget {

  static const String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  static const String id = "login_page";

  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override

  void initState(){
    super.initState();

    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          SizedBox(height: 30.0,),
          TextField(
            controller: _emailController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ("ENTER YOUR EMAIL ID"),
            ),
          ),
          SizedBox(height: 20.0,),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ("ENTER YOUR PASSWORD"),
            ),
          ),
          SizedBox(height: 20.0,),

          RaisedButton(
            onPressed: () async {

              if(_emailController.text.isEmpty || _passwordController.text.isEmpty    ){
                print('Email and password is empty');
                return;
              }
              try{
                final user = await AuthHelp.signInWithEmail(
                  email: _emailController.text,
                  password: _passwordController.text,);

                  if(user != null){
                    print('Login success');

                }
              }
              catch(e){
                print('e');
              }

              Navigator.pushNamed(context, HomePgg.id);
            },
            child: Text("LOG IN",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),),
          ),

          SizedBox(height: 20.0,),

          RaisedButton(
            onPressed: () async {

              try{
                await AuthHelp.signInWithGoogle();

              }
              catch(e){
                print('e');
              }

              Navigator.pushNamed(context, HomePgg.id);
            },
            child: Text("LOGIN WITH GOOGLE",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),),
          )
        ],
      ),

    );
  }
}
