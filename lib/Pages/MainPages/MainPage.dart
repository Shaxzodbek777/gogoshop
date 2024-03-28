import 'dart:core';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Modules/Productmodules.dart';
import '../../Modules/Story_Module.dart';
import '../ProductPages/ProductPages.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static final String id = "MainPage";


  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  //product List
  final List <PhoneInfo> _productItem =[
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
     ];

  //Story List
  List<Post> _posts = [
    Post( 'assets/images/Carusel.png', 'SonyOfficial'),
    Post( 'assets/images/Story.png', 'XiaomiGlob...'),
    Post( 'assets/images/Story1.png', 'Rebook Shoes'),
    Post( 'assets/images/Carusel.png', 'SonyOfficial'),
    Post( 'assets/images/Story.png', 'XiaomiGlob...'),
    Post( 'assets/images/Story1.png', 'Rebook Shoes'),
    Post( 'assets/images/Carusel.png', 'SonyOfficial'),
    Post( 'assets/images/Story.png', 'XiaomiGlob...'),
    Post( 'assets/images/Story1.png', 'Rebook Shoes'),
  ];

  //Carusel Lisy
  final List<String> caruselImageList = [
    'assets/images/carusel1.png',
    'assets/images/Carusel2.png',
    'assets/images/Carusel3.png'
  ];

  final CarouselController carouselController =CarouselController();
  int currentIndex = 0;
  int CaruselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:SizedBox(
          //  height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 50,),

                //searich
                Container(
                  margin: EdgeInsets.only(left: 24),
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
                                  hintText: "Найти товары",
                                  border: InputBorder.none
                              ),
                            ),
                          )
                      ),
                      Image(image: AssetImage('assets/images/Filter.png'))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                //Posts
                Container(

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 110,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: _posts.map((post) {
                        return _itemOfPost(post);
                      }).toList()

                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: SizedBox(
                     // height: _productItem.length>4?MediaQuery.of(context).size.height:MediaQuery.of(context).size.height*0.5,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [


                          //Carusel
                          CarouselSlider.builder(
                            itemCount: caruselImageList.length,
                            options: CarouselOptions(
                              autoPlay: true,
                              initialPage: 0,
                              enableInfiniteScroll: false,
                            ),

                            itemBuilder: (BuildContext context, int index, int PageIndex){
                              //  CaruselIndex = index;
                              print(CaruselIndex);
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child:Image.asset(
                                  caruselImageList[index],
                                  fit: BoxFit.contain,
                                ),
                              );

                            },

                          ),


                          //Carusel indecator
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _buildIndecator(),

                            ),
                          ),

                          SizedBox(height: 20,),

                          //Text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Популярное сейчас", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Musio",fontSize:  20),),
                              SizedBox(width: 100,),
                              GestureDetector(
                                child: Text("Смотреть все", style: TextStyle(color: Color(0xFFFF5001),fontFamily: "Musio"),),
                                onTap: (){
                                  Navigator.pushNamed(context, ProductPages.id);
                                },
                              )
                            ],
                          ),

                          SizedBox(height: 20,),
                      GestureDetector(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*1,
                          child: GridView.builder(

                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 3/5,
                                crossAxisCount: 2),
                            physics: const NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                            itemCount: _productItem.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (ctx, index) {
                              return cellOfList(_productItem[index]);
                            },
                          ),
                        ),
                        onTap: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context){
                            return Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Text("bu yerda ma'lumot chiqadi"),
                            );
                            }
                          );
                        },
                      )


                        ],
                      ),
                    ),
                  ),
                ),

              ]
          ),
        )
    );
  }


  // post story widgits
  Widget _itemOfPost (Post post){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
              width: 3,
              color: Color(0xFF8e44ad),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(
              2,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(post.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(post.name),
      ],
    );
  }


  Widget cellOfList(PhoneInfo info) {
    return SizedBox(
      height: 200,
      //width: MediaQuery.of(context).size.width*0.45,

      child: Column(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child:
              Stack(
                children: [
                  Image.asset(info.image!,fit: BoxFit.cover,width: 200,height: 200,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height:50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              )
          ),

          SizedBox(height: 10,),
          Text(info.name!, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star_border, color: Colors.yellow,),
                Icon(Icons.star_border, color: Colors.yellow,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Text(info.cost!.toString(), style: TextStyle(fontFamily : 'Musio',color: Colors.black,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  Widget _indecator (bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Color(0xFFFF5001),
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  List<Widget>  _buildIndecator(){
    List<Widget> indecators = [];
    for (int i = 1; i<=caruselImageList.length; i++){
      if (CaruselIndex == i){
        indecators.add(_indecator(true));
      }
      else{
        indecators.add(_indecator(false));
      }
    }
    return indecators;
  }


}
