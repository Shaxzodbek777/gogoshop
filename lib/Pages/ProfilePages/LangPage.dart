import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});
static final String id = "LanguagePage";
  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
appBar: AppBar(
  title: Text("Выбор языка", style: TextStyle(fontFamily: "Musio",fontWeight: FontWeight.bold),),
  backgroundColor: Colors.grey.shade100,
),
body: Container(
  height: double.infinity,
  width: double.infinity,
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Русский", style: TextStyle(fontFamily: "Musio",fontSize: 18),),
            Radio(value: 1, groupValue: _value, onChanged: (value){
              setState(() {
                _value = value!;
              });
            })
          ],
        ),
      ),
      SizedBox(height: 30,),
      Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Oʻzbekcha", style: TextStyle(fontFamily: "Musio",fontSize: 18),),
            Radio(value: 2 , groupValue: _value, onChanged: (value){
              setState(() {
                _value = value!;
              });
            })
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}
