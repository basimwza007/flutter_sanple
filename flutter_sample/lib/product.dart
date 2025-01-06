import 'package:bottom_navi_app/product_detail.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product'),),
      body: Center(child: Column (
        children: [
          const SizedBox(height: 30,),
          const Text('Product'),
          const SizedBox(height: 60,),
          btnDetail(context)
        ],
        ),),
    );
  }

  Widget btnDetail(BuildContext ctx){
    return TextButton(
      onPressed: () => Navigator.push(
        ctx,
        MaterialPageRoute(builder: (ctx)=> const ProductDetail())),
      child: const Text('Product Detail'),);
  }
}