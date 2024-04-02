import 'package:flutter/material.dart';

import 'dobavitadris.dart';

class AdrisPage extends StatefulWidget {
  const AdrisPage({super.key});
static final String id = "AdrisPage";
  @override
  State<AdrisPage> createState() => _AdrisPageState();
}

class _AdrisPageState extends State<AdrisPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Адреса", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Musio"),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20,bottom: 10),
              height: 92,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/C1.png')),
                  SizedBox(width: 16,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Дом", style: TextStyle(color: Colors.black, fontFamily: 'Musio', fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(width: 8,),
                          Container(
                            height: 24,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text("Основной", style: TextStyle(color: Colors.black, fontSize: 10,fontFamily: "Musio"),),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 7,),
                      Text("61480 Sunbrook Park, PC 5679",style: TextStyle(color: Color(0xFF616161)),)
                    ],
                  ),
                  SizedBox(width: 12,),
                  Image(image: AssetImage('assets/images/Edit.png'))
                ],
              ),
            ),
            SizedBox(height: 24,),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20,bottom: 10),
              height: 92,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/C1.png')),
                  SizedBox(width: 16,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Офис второй дом", style: TextStyle(color: Colors.black, fontFamily: 'Musio', fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(width: 8,),

                        ],
                      ),
                      SizedBox(height: 7,),
                      Text("61480 Sunbrook Park, PC 5679",style: TextStyle(color: Color(0xFF616161)),)
                    ],
                  ),
                  SizedBox(width: 12,),
                  Image(image: AssetImage('assets/images/Edit.png'))
                ],
              ),
            ),
            SizedBox(height: 400,),
           GestureDetector(
             child:  Container(
                 height: 54,
                 width: 380,
                 decoration: BoxDecoration(
                     color: Color(0xFFFF5001),
                     borderRadius: BorderRadius.circular(100)
                 ),
                 child: Center(
                   child: Text("Добавить новый адрес",style: TextStyle(fontFamily: "Musio",fontSize: 16,color: Colors.white),),
                 )
             ),
             onTap: (){
               Navigator.pushNamed(context, DobavitAdris.id);
             },
           )
          ],
        ),
      ),
    );
  }
}
