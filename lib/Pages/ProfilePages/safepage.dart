import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bizopasna extends StatefulWidget {
  const Bizopasna({super.key});
static final String id = "Bizopasna";
  @override
  State<Bizopasna> createState() => _BizopasnaState();
}

class _BizopasnaState extends State<Bizopasna> {

  bool ligth = false;
  bool ligth2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Безопасность", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Musio"),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Face ID", style: TextStyle(fontFamily: "Musio", fontSize: 18),),
                  Switch.adaptive(
                    value: ligth2,
                    onChanged: (bool value){
                      setState(() {
                        ligth2 = value;
                      });
                    },
                  )

                ],
              ),
            ),
            SizedBox(height: 36,),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Biometric ID", style: TextStyle(fontFamily: "Musio", fontSize: 18),),
                  Switch.adaptive(
                    value: ligth,
                    onChanged: (bool value){
                      setState(() {
                        ligth = value;
                      });
                    },
                  )

                ],
              ),
            ),
            SizedBox(height: 36,),
            Container(
              height: 54,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFE7E7E7)
              ),
              child: Center(
                child: Text("Изменить ПИН-код", style: TextStyle(fontFamily: "Musio", fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 54,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFE7E7E7)
              ),
              child: Center(
                child: Text("Изменить пароль", style: TextStyle(fontFamily: "Musio", fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
