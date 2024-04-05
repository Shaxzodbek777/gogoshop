import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LichniDalnix extends StatefulWidget {
  const LichniDalnix({super.key});
static final String id = "LichniDalnix";
  @override
  State<LichniDalnix> createState() => _LichniDalnixState();
}

class _LichniDalnixState extends State<LichniDalnix> {

  File? _image;
  final ImagePicker _picker = ImagePicker();

  _imgFromGallery() async {
    XFile? image =
    await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = File(image!.path);
    });
  }

  _imgFromCamera() async {
    XFile? image =
    await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _image = File(image!.path);
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: [
                  ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Pick Photo'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Take Photo'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  String dropdownValue ='One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Личные данные", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Musio"),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24,),
            GestureDetector(
              onTap: (){
                _showPicker(context);
              },
              child:  Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(
                            width: 1.5
                        )
                    ),
                    child: _image != null ? ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child:Image.file(
                          _image!,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        )):
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/person.jpg'),

                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.edit, color: Color(0xFFFF5001),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(top: 2,left: 10),
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Имя",
                    hintStyle: TextStyle(color: Colors.black,fontFamily: "Musio",fontSize: 14),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(top: 2,left: 10),
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Семья",
                    hintStyle: TextStyle(color: Colors.black,fontFamily: "Musio",fontSize: 14),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(top: 2,left: 10),
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Время вашего рождения",
                    hintStyle: TextStyle(color: Colors.black,fontFamily: "Musio",fontSize: 14),
                    border: InputBorder.none,
                  icon: Icon(Icons.calendar_month_rounded)
                ),
              ),
            ),
            SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(top: 2,left: 10),
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "электронная почта",
                    hintStyle: TextStyle(color: Colors.black,fontFamily: "Musio",fontSize: 14),
                    border: InputBorder.none,
                  icon: Icon(Icons.email)
                ),
              ),
            ),
            SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(top: 2,left: 10),
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: DropdownButton<String>(

                value: dropdownValue,
                //icon: Icon(Icons.language),
                items: [
                  DropdownMenuItem(
                    value: "One",
                    child: Text("O'zbekiston"),
                  ),
                  DropdownMenuItem(
                    value: "Two",
                    child: Text("Tojikiston"),
                  )
                ], onChanged: (String? value) {  },
              )
              ),
            SizedBox(height: 24,),
            Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.only(top: 2,left: 10),
                height: 56,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                child: DropdownButton<String>(

                  value: dropdownValue,
                  //icon: Icon(Icons.language),
                  items: [
                    DropdownMenuItem(
                      value: "One",
                      child: Text("+998",style: TextStyle(fontFamily: "Musio"),),
                    ),
                    DropdownMenuItem(
                      value: "Two",
                      child: Text("+992",style: TextStyle(fontFamily: "Musio"),),
                    )
                  ], onChanged: (String? value) {  },
                )
            ),
            SizedBox(height: 24,),
            Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.only(top: 2,left: 10),
                height: 56,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                child: DropdownButton<String>(

                  value: dropdownValue,
                  //icon: Icon(Icons.language),
                  items: [
                    DropdownMenuItem(
                      value: "One",
                      child: Text("Мужчина",style: TextStyle(fontFamily: "Musio"),),
                    ),
                    DropdownMenuItem(
                      value: "Two",
                      child: Text("Мужчина",style: TextStyle(fontFamily: "Musio"),),
                    )
                  ], onChanged: (String? value) {  },
                )
            ),
            SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(top: 2,left: 10),
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFF5001)
              ),
              child: Center(
                child: Text("Обновить",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: "Musio"),),
              )
            )
          ],
        ),
      ),
    );
  }
}


