import 'package:flutter/material.dart';
import 'package:gogoshop/Pages/Auth_Page/FAPage.dart';
import 'package:gogoshop/Pages/Auth_Page/SignInPage.dart';
import 'package:gogoshop/Pages/Auth_Page/SignUpPage.dart';
import 'package:gogoshop/Pages/MainPages/FavoritiPage.dart';
import 'package:gogoshop/Pages/MainPages/HomePage.dart';
import 'package:gogoshop/Pages/MainPages/Katalog.dart';
import 'package:gogoshop/Pages/MainPages/MainPage.dart';
import 'package:gogoshop/Pages/MainPages/ProfilePage.dart';
import 'package:gogoshop/Pages/MainPages/korzinakPage.dart';
import 'package:gogoshop/Pages/ProfilePages/Bezopasna.dart';
import 'package:gogoshop/Pages/ProfilePages/ContactUsPage.dart';
import 'package:gogoshop/Pages/ProfilePages/LangPage.dart';
import 'package:gogoshop/Pages/ProfilePages/adresPage.dart';
import 'package:gogoshop/Pages/ProfilePages/chat.dart';
import 'package:gogoshop/Pages/SplacePage.dart';

import 'Pages/ProductPages/ProductPages.dart';
import 'Pages/ProfilePages/dobavitadris.dart';
import 'Pages/ProfilePages/dobavitcard.dart';
import 'Pages/ProfilePages/oplatapage.dart';
import 'Pages/ProfilePages/voprospage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplacePage(),
      routes: {
        FAPage.id: (context)=> FAPage(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context)=> SignUpPage(),
        MainPage.id: (context)=> MainPage(),
        HomePage.id: (context)=> HomePage(),
        FavoritiPage.id: (context)=> FavoritiPage(),
        KatalogPage.id: (context)=> KatalogPage(),
        KorzinkaPage.id: (context)=>KorzinkaPage(),
        ProfilrPage.id: (context)=> ProfilrPage(),
        ProductPages.id: (context)=> ProductPages(),
        ContactUsPage.id: (context)=> ContactUsPage(),
        ChatPage.id: (context)=> ChatPage(),
        VoprosPage.id: (context)=>VoprosPage(),
        Bizopasna.id: (context)=> Bizopasna(),
        LanguagePage.id: (context)=>LanguagePage(),
        OplataPage.id: (context)=>OplataPage(),
        DobavitCard.id:  (context)=> DobavitCard(),
        AdrisPage.id: (context)=> AdrisPage(),
        DobavitAdris.id: (context)=>DobavitAdris()
      },
    );
  }
}
