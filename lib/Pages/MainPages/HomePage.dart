import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FavoritiPage.dart';
import 'Katalog.dart';
import 'MainPage.dart';
import 'ProfilePage.dart';
import 'korzinakPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static final String id = "HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  PageController? _pageController;
  int _currentTap = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =PageController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          MainPage(),
          KatalogPage(),
          KorzinkaPage(),
          FavoritiPage(),
          ProfilrPage()
        ],
        onPageChanged: (int index){
          setState(() {
            _currentTap = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (int index){
          setState(() {
            _currentTap =index;
            _pageController!.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
        currentIndex: _currentTap,
        activeColor: Color(0xFFFF5001),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Navigatonbaricon/1.png')
            ),
            label: 'Главный',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/Navigatonbaricon/2.png')
              ),
            label:'Катигория'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/Navigatonbaricon/3.png')
              ),
              label:'Корзина'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/Navigatonbaricon/4.png')
              ),
              label:'Избранные'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/Navigatonbaricon/5.png')
              ),
              label:'Профиль'
          ),
        ],
      ),
    );
  }
}