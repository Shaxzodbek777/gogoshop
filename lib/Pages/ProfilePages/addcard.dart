import 'package:flutter/material.dart';

class DobavitCard extends StatefulWidget {
  const DobavitCard({super.key});
static final String id = "DobavitCard";
  @override
  State<DobavitCard> createState() => _DobavitCardState();
}

class _DobavitCardState extends State<DobavitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Добавление карты", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Musio"),),
      ),
    body: Container(
      margin: EdgeInsets.only(left: 15),
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //card
          Container(
         //   margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.only(top: 30,left: 30),
            height: 230,
            width: 380,
            decoration: BoxDecoration(
              color: Color(0xFF313130),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Uzcard/Humo', style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: "Musio"),),
                SizedBox(height: 30,),
                Text("•••• •••• •••• ••••",style: TextStyle(color: Colors.white,fontSize: 32),),
                SizedBox(height: 30,),
                Text("Card Holder name          Expiry date",style: TextStyle(color: Colors.white,fontSize: 10,),),
                SizedBox(height: 4,),
                Text("•••• ••••                                ••••/••••",style: TextStyle(color: Colors.white,fontSize: 10,),)
              ],
            ),
          ),
          SizedBox(height: 24,),
          Text("Название карты",style: TextStyle(fontSize: 18,fontFamily: "Musio",fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.only(top: 10,left: 20),
            height: 56,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Card name",
                  hintStyle: TextStyle(
                      fontFamily: "Musio"
                  ),
                  border:InputBorder.none
              ),
            ),
          ),
          SizedBox(height: 24,),
          Text("Номер карты",style: TextStyle(fontSize: 18,fontFamily: "Musio",fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.only(top: 10,left: 20),
            height: 56,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "9860 **** *** ****",
                  hintStyle: TextStyle(
                      fontFamily: "Musio"
                  ),
                  border:InputBorder.none
              ),
            ),
          ),
          SizedBox(height: 24,),
          Text("Срок действия",style: TextStyle(fontSize: 18,fontFamily: "Musio",fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.only(top: 10,left: 20),
            height: 56,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "07/07",
                  hintStyle: TextStyle(
                      fontFamily: "Musio"
                  ),
                  border:InputBorder.none,
                icon: Icon(Icons.calendar_month_sharp)
              ),
            ),
          ),
          SizedBox(height: 24,),
          Container(
            height: 54,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFFFF5001)
            ),
            child: Center(
              child: Text("Добавить", style: TextStyle(color: Colors.white,fontFamily: "Musio",fontSize: 16),),
            )
          )


        ],
      ),
    ),
    );
  }
}
