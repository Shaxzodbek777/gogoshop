import 'package:flutter/material.dart';
import '../MainPages/HomePage.dart';
import 'SignInPage.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static final String id = "SingUpPage";
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  var isLoading = false;
  var emailController  = TextEditingController();
  var passwordController = TextEditingController();

  bool isChecked = false;

  _doSignIn(){
    String email = emailController.text.toString().trim();
    String pasword = passwordController.text.toString().trim();
    if (email.isEmpty || pasword.isEmpty) return;
    setState((){
      isLoading = true;

    });
   Navigator.pushReplacementNamed(context, HomePage.id);
  }


  _callSingUpPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 30,),

              //logo
              Container(
                height: 48,
                width: 260,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png')
                    )
                ),
              ),

              SizedBox(height: 56,),
              Text("Регистрация", style: TextStyle(color: Colors.black, fontSize: 32,fontWeight: FontWeight.bold, fontFamily: 'Musio'),),
              SizedBox(height: 56,),

              //Email
              Container(

                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFFAFAFA)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.email, color: Color(0xFF9E9E9E),),
                    SizedBox(width: 20,),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 20,
                      width: 308,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: InputBorder.none
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //Parol
              Container(

                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFFAFAFA)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.lock, color: Color(0xFF9E9E9E),),
                    SizedBox(width: 20,),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 20,
                      width: 308,
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Паролы",
                            border: InputBorder.none
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //Chekbox
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
                  Text("Запомнить меня")

                ],
              ),

              SizedBox(height: 20,),
              GestureDetector(
                child: Container(
                  height: 54,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                    child: Text("Зарегистрироваться", style: TextStyle(color: Colors.black, fontFamily: "Musio", fontSize: 16),),
                  ),
                ),
                onTap: (){
                  _doSignIn();
                },
              ),

              SizedBox(height: 50,),

              //ili
              Row(
                children: [
                  Image(image: AssetImage('assets/images/line.png')),
                  Text(' или войти через ', style: TextStyle(color: Color(0xFF616161), ),),
                  Image(image: AssetImage('assets/images/line.png')),
                ],
              ),

              SizedBox(height: 30,),

              //SMI
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black12
                        )
                    ),
                    child: Center(
                      child: Icon(Icons.facebook, color: Colors.blue,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black12
                        )
                    ),
                    child: Center(
                      child: Icon(Icons.g_mobiledata_outlined, color: Colors.red,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black12
                        )
                    ),
                    child: Center(
                      child: Icon(Icons.apple, color: Colors.black,),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("У вас уже есть аккаунт?", style: TextStyle(color: Color(0xFF9E9E9E)),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Text("Войти", style: TextStyle(color: Color(0xFFFF5001)),),
                    onTap: (){
                      _callSingUpPage();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
