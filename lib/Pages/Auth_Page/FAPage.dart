import 'package:flutter/material.dart';

import 'SignInPage.dart';
import 'SignUpPage.dart';
class FAPage extends StatefulWidget {
  const FAPage({super.key});
  static final String id = "FAPage";
  @override
  State<FAPage> createState() => _FAPageState();
}

class _FAPageState extends State<FAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child:  Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 90,),
                Image(image: AssetImage('assets/images/auth.png')),
                SizedBox(height: 35,),
                Text("Авторизация", style: TextStyle( color: Colors.black, fontSize: 32,fontWeight: FontWeight.bold, fontFamily: "Musio"),),
                SizedBox(height: 20,),

                //Facebook
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.blue,size: 30,),
                      SizedBox(width: 12,),
                      Text("Войти через Facebook", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ),

                //Google
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email_outlined, color: Colors.red,size: 30,),
                      SizedBox(width: 12,),
                      Text("Войти через Google", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ),

                //Apple
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apple, color: Colors.black,size: 30,),
                      SizedBox(width: 12,),
                      Text("Войти через Apple", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ),

                //или
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Image(image: AssetImage('assets/images/line.png')),
                    SizedBox(width: 16,),
                    Text("или", style: TextStyle(color: Color(0xFF616161)),),
                    SizedBox(width: 16,),
                    Image(image: AssetImage('assets/images/line.png')),
                  ],
                ),

                //button
                GestureDetector(child: Container(
                  margin: EdgeInsets.only(top: 24, bottom: 38),
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF5001),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                    child: Text("Войти с паролем", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ), onTap: (){
                  Navigator.pushNamed(context, SignInPage.id);
                },),

                //text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("У вас нет учетной записи?",style: TextStyle(color: Color(0xFF9E9E9E)),),
                    SizedBox(width: 8,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SignUpPage.id);
                      },
                      child: Text("Зарегистрироваться.", style: TextStyle(color: Color(0xFFFF5001)),),
                    )
                  ],
                )

              ],
            ),
          ),
        )
    );
  }
}