import 'package:bottom_navi_app/help.dart';
import 'package:bottom_navi_app/home.dart';
import 'package:bottom_navi_app/member.dart';
import 'package:bottom_navi_app/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _navItemIndex = 0;  //ลำดับที่ของปุ่มที่เลือก

  var pages = <Widget> [const HomePage(), const Product(), const Member(), const Help()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text ('BottomNavigaionBar'), centerTitle: true,),
      body: pages[_navItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.deepPurple,//สีพื้นหลัง
        //fixedColor: Colors.white, //สีปุ่มที่ถูกเลือก

        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,

        showSelectedLabels: true, //เเสดงข้อความบนปุ่มที่ถูกเลือก
        showUnselectedLabels: true, //เเสดงข้อความบนปุ่มที่ไม่ถูกเลือก
        currentIndex: _navItemIndex,
        
        items: btnNavItem(),
        onTap: (index) {    //เมื่อมีการคลิกที่ปุ่ม
          setState(() {
            _navItemIndex = index;
          });
        },
        ),
    );
  }

  List<BottomNavigationBarItem> btnNavItem(){
    var iconItem = [Icons.home, Icons.shopping_cart, Icons.person, Icons.help];
    var labelItem = ['Home', 'Product', 'Member', 'Help'];
    var bgColorItem = [Colors.deepPurple, Colors.indigo, Colors.teal, Colors.brown];


    List<BottomNavigationBarItem> mybtn;

    BottomNavigationBarItem createItem(index){
      return BottomNavigationBarItem(
        icon: Icon(iconItem[index]),
        label: labelItem[index],
        backgroundColor: bgColorItem[index]
        );
    }
    mybtn = List.generate(iconItem.length, createItem);

    return mybtn;
  }
}