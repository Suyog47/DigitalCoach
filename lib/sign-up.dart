import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'Decoration/input_decoration.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _firstname, _lastname, _username, _dob, _pass;
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
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Create", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    Text("Account", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Already have an account?  "),
                        InkWell(onTap: (){
                          Navigator.pushNamed(context, "/log-in");
                          },
                            child: Text("Login", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),))
                      ],
                    )
                  ],
                ),

                SizedBox(height: 25,),

              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: SizedBox(
                              width: 140,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'First Name',
                                    labelStyle: TextStyle(color: Colors.black)
                                ),
                                onChanged: (val) => _firstname = val.trim(),
                                validator: (val) => val.isEmpty ? "Enter First Name" : null,
                              ),
                            ),
                          ),

                          SizedBox(width: 15,),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: SizedBox(
                              width: 140,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Last Name',
                                    labelStyle: TextStyle(color: Colors.black)
                                ),
                                onChanged: (val) => _lastname = val.trim(),
                                validator: (val) => val.isEmpty ? "Enter Last Name" : null,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 15,),

                    SizedBox(
                      width: 130,
                      child: DateTimePicker(
                        decoration: InputDecoration(
                            labelText: 'Date of Birth',
                            labelStyle: TextStyle(color: Colors.black)
                        ),
                        type: DateTimePickerType.date,
                        dateMask: 'yyyy/MM/dd',
                        firstDate: DateTime(1950),
                        lastDate: DateTime(int.parse(DateTime.parse(new DateTime.now().toString()).year.toString())+1),
                        onChanged: (val) {
                          setState(() {
                            _dob = val;
                          });
                        },
                        validator: (val) => val.isEmpty ? "Select Date" : null,
                      ),
                    ),

                    SizedBox(height: 15,),

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

                    SizedBox(height: 15,),

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

                    SizedBox(height: 16,),

                    Center(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 95),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black
                      ),
                          child: FlatButton(onPressed: (){}, child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 21)))),
                    ),

                    SizedBox(height: 25,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("By Signing Up, you agree to our"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Terms of Use  ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            Text("and  "),
                            Text("Privacy Policy", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
