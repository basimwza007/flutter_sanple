import 'package:flutter/material.dart';

class MyFood extends StatelessWidget {
  const MyFood({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('แอพเมนูอาหารออนไลน์ นายเฉลิมชัย พิลาวุธ'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // รูปภาพ
              Image.network(
                'https://s359.kapook.com//pagebuilder/c5a27416-c833-4114-81d0-6393d25143f8.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ชื่อเมนู
                    const Text(
                      'เเกงกะหรี่',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // รายละเอียดเมนู
                    const Text(
                      ' แกงกะหรี่ อาหารญี่ปุ่นที่หลายคนคงเคยกินในร้านอาหารญี่ปุ่น' 
                      'แต่ถ้ารสชาติไม่ถูกปากมาทำกินเองกันดีกว่า วันนี้ขอแนะนำเมนูแกงกะหรี่ญี่ปุ่น'
                      ' ทำง่ายจากก้อนแกงกะหรี่ญี่ปุ่น ใส่เนื้อหมู มันฝรั่ง หอมใหญ่ และแครอต '
                      'ทำหม้อโตแบ่งกินได้หลายมื้อเลย',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    // รีวิวและจำนวนรีวิว
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        const Text(
                          '111K รีวิว',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // ข้อมูลเวลาและจำนวนเสิร์ฟ
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoColumn(icon: Icons.timer, label: 'PREP', value: '22 นาที'),
                        InfoColumn(icon: Icons.access_time, label: 'TIME', value: '2-3 นาที'),
                        InfoColumn(icon: Icons.people, label: 'FEED', value: '4-6'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget สำหรับแสดงข้อมูลแบบคอลัมน์
class InfoColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoColumn({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
  
}
