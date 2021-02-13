import 'package:flutter/material.dart';

class Approach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg3.png"),fit: BoxFit.fill
            )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, size: 25, color: Colors.black)),
                  SizedBox(height: 10),
                  Text("Our", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                  Text("Approach", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                ],
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black
                        ),
                        child: Text("1", style: TextStyle(color: Colors.white, fontSize: 28)),
                      ),

                      SizedBox(width: 5,),

                      Flexible(child: Text("Take self assessment psychometric test to identify your personality types, unique strengths, and skill sets.",
                          style: TextStyle(fontSize: 16, letterSpacing: 2, fontWeight: FontWeight.bold),
                          maxLines: 5,
                          softWrap: true)),
                    ],
                  ),

                  SizedBox(height: 30),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black
                        ),
                        child: Text("2", style: TextStyle(color: Colors.white, fontSize: 28)),
                      ),

                      SizedBox(width: 5,),

                      Flexible(child: Text("An option to receive feedback from your trusted allies on your unique traits.",
                          style: TextStyle(fontSize: 16, letterSpacing: 2, fontWeight: FontWeight.bold),
                          maxLines: 5,
                          softWrap: true)),
                    ],
                  ),
                ],
              ),


             Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Flexible(fit: FlexFit.loose, child: Text("Our system will generate a personalized learning solution just for you.", softWrap: true,)),

                 SizedBox(height: 15,),

                 Text("It's that simple...",
                     style: TextStyle(fontSize: 16, letterSpacing: 2, fontWeight: FontWeight.bold),
                     maxLines: 5,
                     softWrap: true),

                 SizedBox(height: 40,),

                 Center(
                   child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 95),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.black
                       ),
                       child: FlatButton(onPressed: (){}, child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 21)))),
                 ),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}
