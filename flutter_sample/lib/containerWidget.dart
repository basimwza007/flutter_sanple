import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
  const Mywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // No Decoration
              Container(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                color: Colors.grey[300],
                child: Text('No Decoration'),
              ),
              SizedBox(height: 20),
              // Circular Border Radius
              Container(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Circular(30)'),
              ),
              SizedBox(height: 20),
              // Circle
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: Text('Circle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
