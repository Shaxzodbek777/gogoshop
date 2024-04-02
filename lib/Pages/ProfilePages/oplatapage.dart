import 'package:flutter/material.dart';
import 'package:gogoshop/Pages/ProfilePages/dobavitcard.dart';

class OplataPage extends StatefulWidget {
  const OplataPage({super.key});
static final String id = "OplataPage";
  @override
  State<OplataPage> createState() => _OplataPageState();
}

class _OplataPageState extends State<OplataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Способы оплаты", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Musio"),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 20,bottom: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/card.png')),
                  SizedBox(width: 12,),
                  Text("•••• •••• •••• •••• 4679", style: TextStyle(fontFamily: "Musio",fontSize: 14, fontWeight: FontWeight.bold),),
                  SizedBox(width: 14,),
                  Text('Основная', style: TextStyle(color: Color(0xFFFF5001),fontWeight: FontWeight.bold,fontSize: 16),)
                ],
              ),
            ),
           GestureDetector(child:  Container(
             height: 54,
             width: 380,
             decoration: BoxDecoration(
               color: Color(0xFFFF5001),
               borderRadius: BorderRadius.circular(100),

             ),
             child: Center(
               child: Text("Добавить новую карту",style: TextStyle(fontSize: 16, color: Colors.white,fontFamily: "Musio"),),
             ),
           ),
           onTap: (){
Navigator.pushNamed(context, DobavitCard.id);
           }
             ,)
          ],
        ),
      ),
    );
  }
}
