import 'package:flutter/material.dart';

class WorkContainer extends StatelessWidget {
  const WorkContainer({super.key});

  Widget contain1() => Container(
    width: 300,
    height: 150,
    color: Colors.purple.shade100,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: const Text("No decorration",style: TextStyle(fontSize: 20),),
  );

  Widget contain2() => Container(
    width: 300,
    height: 150,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.purple.shade200,
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.elliptical(30, 30))
    ),
    child:  const Text("Circular(30)",style: TextStyle(fontSize: 20),),
  );

  Widget circle1() => Container(
    width: 300,
    height: 300,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.purple.shade300,
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.red,
        style: BorderStyle.solid,
        width: 10,
      )
    ),
    child:  const Text("Circle",style: TextStyle(fontSize: 20),),


  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 192, 255),
        title: const Text("Container"),
      ),

      body: Center(
        child: Column(
          children: [
            contain1(),
            contain2(),
            circle1(),
          ],
        ),
      ),
    );
  }
}