import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 148, 255),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("แอปของฉัน", 
            style: TextStyle(color: Colors.yellow,fontSize: 24,)),
        ),
        body: Container(
          alignment: Alignment.center,
          
          child:  const Column(
            children: [ Text("สวัสดีฮ๊าฟฟฟฟ", style: TextStyle(color: Colors.black, fontSize: 24),),
            Image(image: NetworkImage("https://www.detectiveconanworld.com/wiki/images/4/4f/Ai_Haibara_Profile.png"),
            ),
            Image(
              image: AssetImage('images/Conan.jpg')
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.thumb_up),
          ),
      ),
    );
  }
}