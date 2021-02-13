import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'Decoration/input_decoration.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _fullname = "Suyog Amin", _dob = "1998/07/09", _email = "suyogamin11@gmail.com", _pass = "sa1147";
  bool _obscureText = true;
  File _image1;

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  _imgFromGallery() async {
    final picker = ImagePicker();
    dynamic image = await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (image != null) {
        _image1 = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/profile-bg.png"),fit: BoxFit.fill)
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("User Profile", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text("Edit", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),)
                  ],
                ),

                SizedBox(height: 40),

                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        child: (_image1 == null)  ?

                        Container(
                            padding: EdgeInsets.all(3),
                            height: 150.0,
                            width: 120.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                                color: Colors.black
                            ),
                            child: Image(image: AssetImage("assets/defaultperson.png"), fit: BoxFit.fill,)
                        )
                            :

                        Container(
                            padding: EdgeInsets.all(3),
                            height: 150.0,
                            width: 110.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                                color: Colors.black
                            ),
                            child: Image.file(_image1,fit: BoxFit.fill)
                        ),
                      ),

                      InkWell(
                        onTap: () => _imgFromGallery(),
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                            ),
                            child: Icon(Icons.edit, color: Colors.white, size: 23,)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15,),

                Center(child: Text(_fullname, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),

                SizedBox(height: 30,),

                Text("Birth Date:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey[700]),),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: DateTimePicker(
                    dateHintText: _dob,
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

                SizedBox(height: 30),

                Text("Email Address:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey[700]),),
                Text(_email, style: TextStyle(fontSize: 17),),

                SizedBox(height: 50),

//                Text("Password:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
//                Stack(
//                children: <Widget>[
//                  SizedBox(
//                    height: 70.0,
//                    child: new TextFormField(
//                      initialValue: _pass,
//                      validator: (val) => val.length < 6 || val.length > 20 ? 'Password should be between 6 to 20 chars.' : null,
//                      onChanged: (val) => _pass = val,
//                      obscureText: _obscureText,
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.centerRight,
//                    child: IconButton(
//                        color: Colors.black,
//                        onPressed: _toggle,
//                        icon: Icon(_obscureText ? Icons.lock_open : Icons.lock)),
//                  )
//                ],
//                  ),

               // SizedBox(height: 5,),

                Center(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 95),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black
                      ),
                      child: FlatButton(onPressed: (){}, child: Text("Done", style: TextStyle(color: Colors.white, fontSize: 21)))),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
