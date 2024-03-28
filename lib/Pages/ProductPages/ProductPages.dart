import 'package:flutter/material.dart';

import '../../Modules/Productmodules.dart';

class ProductPages extends StatefulWidget {
  const ProductPages({super.key});
static final String id = "ProductPages";
  @override
  State<ProductPages> createState() => _ProductPagesState();
}

class _ProductPagesState extends State<ProductPages> {
  final List <PhoneInfo> _productItem =[
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),
    PhoneInfo(image:'assets/images/product.png',name: "Iphone 12",rate: "",cost:123456),

  ];
  int productCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
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
        SizedBox(height: 24,),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: Column(
            children: [
              Text("Электроника", style: TextStyle(fontFamily: 'Musio',fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 2,),
              Text('$productCounter товаров', style: TextStyle(color: Color(0xFF7707070), fontSize: 16, fontFamily: 'Musio'),)
            ],
          ),
        ),
        Expanded(
          child: GestureDetector(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.4,
              child: GridView.builder(

                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(

                    childAspectRatio: 3/5,
                    crossAxisCount: 2),
                physics: BouncingScrollPhysics(),
                itemCount: _productItem.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, index) {
                  return cellOfList(_productItem[index]);
                },
              ),
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Text("bu yerda ma'lumot chiqadi"),
                  );
                },
              );
            })
    )

      ],
              ),
    );
  }

  Widget cellOfList(PhoneInfo info) {
    return SizedBox(
      height: 100,
      //width: MediaQuery.of(context).size.width*0.45,

      child: Column(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            width: 170,
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
          Text(info.name!, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18,fontFamily: "Musio"),),
          SizedBox(
            height: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star_border, color: Colors.yellow,),
                Icon(Icons.star_border, color: Colors.yellow,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Text(info.cost!.toString(), style: TextStyle(fontFamily : 'Musio',fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
