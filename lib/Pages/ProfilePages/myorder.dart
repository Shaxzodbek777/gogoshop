import 'package:flutter/material.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});
static final String id = "MyOrderPage";
  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Мои заказы", style: TextStyle(fontFamily: "Musio",fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
