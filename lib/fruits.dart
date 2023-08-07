import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
void main(){
  
  runApp(MaterialApp(home: FruitPage(),));
}
class FruitPage extends StatefulWidget {
  const FruitPage({super.key});

  @override
  State<FruitPage> createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  var images = [
    "assets/1-removebg-preview.png",
    "assets/2-removebg-preview.png",
    "assets/3-removebg-preview.png",
    "assets/4-removebg-preview.png",
    "assets/5-removebg-preview.png",
    "assets/6-removebg-preview.png",
    "assets/7-removebg-preview.png",
    "assets/8-removebg-preview.png"
  ];
  var name = ["Banana","Pineapple","Apple","Strawberry","Kiwi","Watermelon","Pears","Mango"];
  var price = [12,34,22,24,5,67,17,32];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product List"),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 20,)
        ],
        ),
        body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
            child: Container(
              height: 100,
              child: Card(
                color: Color(0xffb1bec6),
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 50,
                      width: 120,
                      child: Card(
                        color: Color(0xff283138),
                        child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white),)),)),
                  ),
                  leading:Container(
                    color: Color(0xffb1bec6),
                    height: 100,
                    // width: 100,
                    child: Image(
                      width: 70,
                      height: 100,
                      image: AssetImage(images[index]))
                  ),
                  title: Text("name:${name[index]}",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("price:${price[index]}",style: TextStyle(fontWeight: FontWeight.bold),),
                  
                ),
              ),
            ),
          );
        }),
    );
  }
}