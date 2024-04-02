import 'package:flutter/material.dart';
import 'package:gogoshop/Pages/ProfilePages/chat.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});
static final String id = "ContactUsPage";
  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
    appBar: AppBar(
      title: Text('Связаться с нами', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: "Musio"),),
      backgroundColor: Colors.grey.shade100,
    ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 30,),
          GestureDetector(
            child:   Container(
              padding: EdgeInsets.all(20),
              height: 64,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/ch1.png')),
                  SizedBox(width: 16,),
                  Text("Чат с поддержкой", style: TextStyle(fontFamily: "Musi", fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, ChatPage.id);
            },
          ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              height: 64,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/ch2.png')),
                  SizedBox(width: 16,),
                  Text("Telegram", style: TextStyle(fontFamily: "Musi", fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              height: 64,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/ch3.png')),
                  SizedBox(width: 16,),
                  Text("WhatsApp", style: TextStyle(fontFamily: "Musi", fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              height: 64,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/ch4.png')),
                  SizedBox(width: 16,),
                  Text("Instagram", style: TextStyle(fontFamily: "Musi", fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              height: 64,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/ch5.png')),
                  SizedBox(width: 16,),
                  Text("Сайт Gogomarket.uz →", style: TextStyle(fontFamily: "Musi", fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
