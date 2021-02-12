import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String _username, _pass;
  bool _obscureText = true;
  final _formkey = GlobalKey<FormState>();
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/sbg.png"),fit: BoxFit.fill)
            ),
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SizedBox(height: 60,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hey,", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                  Text("Login Now", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("If you are new  "),
                      InkWell(onTap: (){
                        Navigator.pushNamed(context, "/sign-up");
                        },
                          child: Text("Create New", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),))
                    ],
                  ),

                  SizedBox(height: 50),

                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.black)
                      ),
                      onChanged: (val) => _username = val.trim(),
                      validator: (val) {
                        if(val.isNotEmpty && RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val)){
                          return null;
                        }
                        return "Enter valid username";
                      }
                  ),

                  SizedBox(height: 25,),

                  Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70.0,
                        child: new TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black)
                          ),
                          validator: (val) => val.length < 6 || val.length > 20 ? 'Password should be between 6 to 20 chars.' : null,
                          onChanged: (val) => _pass = val,
                          obscureText: _obscureText,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            color: Colors.black,
                            onPressed: _toggle,
                            icon: Icon(_obscureText ? Icons.lock_open : Icons.lock)),
                      )
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("Forgot Password? "),
                      Text("Reset", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                    ],
                  ),

                  SizedBox(height: 40),

                  Center(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 95),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black
                        ),
                        child: FlatButton(onPressed: (){}, child: Text("Log In", style: TextStyle(color: Colors.white, fontSize: 21)))),
                  ),

                  SizedBox(height: 20),

                  Center(child: Text("More Info."))
                ],
              ),


            ]
          ),
          ),
        )
      ),
    );
  }
}
