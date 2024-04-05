import 'package:flutter/material.dart';

class VoprosPage extends StatefulWidget {
  const VoprosPage({super.key});
static final String id = "VoprosPage";
  @override
  State<VoprosPage> createState() => _VoprosPageState();
}

class _VoprosPageState extends State<VoprosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Часто задаваемые вопросы", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23, fontFamily: "Musio"),),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: ExpansionTile(
                title:  Text("Что такое Gogo Market?", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Musio", fontSize: 18),),
                children: const <Widget>[
                  ListTile(
                    title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Musio"),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: ExpansionTile(
                title:  Text("Что такое Gogo Market?", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Musio", fontSize: 18),),
                children: const <Widget>[
                  ListTile(
                    title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Musio"),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: ExpansionTile(
                title:  Text("Что такое Gogo Market?", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Musio", fontSize: 18),),
                children: const <Widget>[
                  ListTile(
                    title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Musio"),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: ExpansionTile(
                title:  Text("Что такое Gogo Market?", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Musio", fontSize: 18),),
                children: const <Widget>[
                  ListTile(
                    title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Musio"),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: ExpansionTile(
                title:  Text("Что такое Gogo Market?", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Musio", fontSize: 18),),
                children: const <Widget>[
                  ListTile(
                    title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Musio"),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
