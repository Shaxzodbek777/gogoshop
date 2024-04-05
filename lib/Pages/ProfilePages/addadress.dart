import 'package:flutter/material.dart';

class DobavitAdris extends StatefulWidget {
  const DobavitAdris({super.key});

  static final String id = "DobavitAdris";

  @override
  State<DobavitAdris> createState() => _DobavitAdrisState();
}

class _DobavitAdrisState extends State<DobavitAdris> {
  bool isChecked = false;
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
                    padding: EdgeInsets.all(18),
                    height: 56,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Дом",
                          hintStyle: TextStyle(fontFamily: "Musio", fontSize: 14,color: Colors.black),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text("Адрес (район, улица, дом, квартира)", style: TextStyle(fontSize: 18,fontFamily: "Musio", fontWeight: FontWeight.bold),),
                  SizedBox(height: 16,),
                  Container(
                    padding: EdgeInsets.all(18),
                    height: 56,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "2899 Summer Drive Taylor, PC 48180",
                          hintStyle: TextStyle(fontFamily: "Musio", fontSize: 14,color: Colors.black),
                          border: InputBorder.none,
                        icon: Icon(Icons.location_on_sharp)
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value){
                          setState(()=> isChecked = value!) ;
                        },
                        activeColor: Color(0xFFFF5001),
                      ),
                      SizedBox(width: 12,),
                      Text("Использовать как основной")

                    ],
                  ),
                  SizedBox(height: 26,),
                  Container(
                    height: 54,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xFFFF5001),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Center(
                      child: Text("Добавить", style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Musio"),),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    height: 54,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7E7),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Center(
                      child: Text("Удалить", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Musio"),),
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
