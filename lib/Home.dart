import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Welcome", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),

              SizedBox(height: 5,),

              Text("Please sign up or login to continue using our app", style: TextStyle(fontSize: 15),),

              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Image(image: AssetImage("assets/homebg.png"), fit: BoxFit.fill,)),

              Column(
                children: [
                   Container(
                       padding: EdgeInsets.symmetric(horizontal: 55),
                       color: Colors.grey[800],
                       child: FlatButton(onPressed: (){
                         Navigator.pushNamed(context, "/sign-up");
                       }, child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 21)))),

                  SizedBox(height: 12,),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 62),
                    color: Colors.grey[800],
                    child: FlatButton(onPressed: (){
                      Navigator.pushNamed(context, "/log-in");
                    }, child: Text("Log In", style: TextStyle(color: Colors.white, fontSize: 21)))),

                  SizedBox(height: 12,),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 46),
                    color: Colors.grey[800],
                    child: FlatButton(onPressed: (){},child: Text("More Info", style: TextStyle(color: Colors.white, fontSize: 21)))),
                ],
              ),

              SizedBox(height: 10,),

              Align(
                alignment: Alignment.centerRight,
                child: RaisedButton(onPressed: (){},
                  child: Text("Next",
                    style: TextStyle(color: Colors.white, fontSize: 18),),
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
