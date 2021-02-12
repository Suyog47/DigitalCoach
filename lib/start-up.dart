import 'package:flutter/material.dart';

class StartUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage("assets/start-up-img.jpg"),
              fit: BoxFit.fill,
            ),

            SizedBox(height: 25,),

            Column(
              children: [
                Text("Skill Up!", style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Center(child: Text("Democratizing access to the learning", style: TextStyle(fontSize: 17))),
                Center(child: Text("and self-development tools", style: TextStyle(fontSize: 17),)),
              ],
            ),

            SizedBox(height: 30,),

            RaisedButton(
              child: Text("Start Learning",
                style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                onPressed: (){
                Navigator.pushNamed(context, "/start-up2");
                },)
        ],

        ),
      ),
    );
  }
}
