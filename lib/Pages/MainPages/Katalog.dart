import 'package:flutter/material.dart';
class KatalogPage extends StatefulWidget {
  const KatalogPage({super.key});
  static final String id = "KatalogPage";
  @override
  State<KatalogPage> createState() => _KatalogPageState();
}

class _KatalogPageState extends State<KatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 50,),
            //search
            Container(
              //margin: EdgeInsets.only(left: 2),
              height:56,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_sharp, color: Color(0xFFDBDBDB),),
                  SizedBox(width: 10,),
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      height: 22,
                      width: 266,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Искать товары в категории",
                              border: InputBorder.none
                          ),
                        ),
                      )
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('Сезонные товары', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/Group.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Спорт и отдых', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/sport.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Бытовая техника', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/CUT.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Компьютерная техника', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/computer.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Красота и здоровье', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/Union.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Электроника', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/electro1.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Строительство и ремонт', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/brush.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Канцелярские товары', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/koncel1.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Авто и мото', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/d.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Книги', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/book.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Развлечения', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/razvlech1.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),
            ListTile(
              title: const Text('Мебель', style: TextStyle(fontFamily: "Musio",fontSize: 18),),
              tileColor: Colors.white,
              onTap: (){},
              leading: const Image(image: AssetImage('assets/images/icons/catalog_icon/mebel.png')),
              trailing: const Image(image: AssetImage('assets/images/icons/catalog_icon/down.png')),

            ),




          ],
        ),
      )
    );
  }
}
