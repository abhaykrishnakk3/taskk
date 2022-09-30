import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sample/screen/home_screen/widget/round_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Expanded(
            child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: "Search products"))),
        actions: [
          const Icon(
            Icons.favorite_border,
            color: Colors.grey,
          ),
          const Icon(
            Icons.add_alert_sharp,
            color: Colors.grey,
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: [
            SizedBox(
              child: ImageSlideshow(
               
                width: double.infinity,
                autoPlayInterval: 3000,
                
                children: [
                  Image.asset('assets/download.png',fit: BoxFit.cover,),
                    Image.asset('assets/download.png',fit: BoxFit.cover,),
                      Image.asset('assets/download.png',fit: BoxFit.cover,)

              ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Text("Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              const Text("More Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
            ],),
            const SizedBox(height: 20,),
           SizedBox(
            width: double.infinity,
            height: 100,
             child: ListView.builder(
                     scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx,index){
              return  const Padding(
                padding: EdgeInsets.all(8.0),
                child: RoundContainer(),
              );
             }),
           )
        ],
      ),
          )),
    );
  }
}
