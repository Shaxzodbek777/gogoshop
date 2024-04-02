import 'package:flutter/material.dart';

class DobavitAdris extends StatefulWidget {
  const DobavitAdris({super.key});

  static final String id = "DobavitAdris";

  @override
  State<DobavitAdris> createState() => _DobavitAdrisState();
}

class _DobavitAdrisState extends State<DobavitAdris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Добавить новый адрес", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Musio"),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 580,
              width: 428,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(44), topRight: Radius.circular(44)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 24,),
                  Text("Подробности адреса", style: TextStyle(fontSize: 24,fontFamily: "Musio",fontWeight: FontWeight.bold),),
                  SizedBox(height: 24,),
                  Image(image: AssetImage('assets/images/linevite.png')),
                  SizedBox(height: 24,),
                  Text("Название адреса", style: TextStyle(fontSize: 18,fontFamily: "Musio", fontWeight: FontWeight.bold),),
                  SizedBox(height: 16,),
                  Container(
                    height: 56,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Дача"
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
