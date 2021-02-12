import 'package:flutter/material.dart';

class StartUp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/start-up-img2.png"),
                fit: BoxFit.fill,
              ),

              SizedBox(height: 20,),

              Text("Hi There!", style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),),

              Text("Welcome to DigiCoach",  style: TextStyle(fontSize: 17)),
              Text("Through tailored learning plans and",  style: TextStyle(fontSize: 17)),
              Text("access to coachs, we wish you a",  style: TextStyle(fontSize: 17)),
              Text("great journey:-",  style: TextStyle(fontSize: 17)),

              SizedBox(height: 20,),

              Text("*  To learn and self develop",  style: TextStyle(fontSize: 17)),
              Text("*  Ensuring achievement of goals",  style: TextStyle(fontSize: 17)),
              Text("*  Enable personal & professional growth",  style: TextStyle(fontSize: 17)),
              Text("*  And, putting you on high growth",  style: TextStyle(fontSize: 17)),

              SizedBox(height: 15,),

              Center(
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, "/home");
                },
                  child: Text("Let's Start",
                    style: TextStyle(color: Colors.white, fontSize: 18),),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
