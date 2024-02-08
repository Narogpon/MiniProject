import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page3(),
    );
  }
}

class Page3 extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'GTX1050Ti',
      'image': 'GTX1050Ti.png',
      'price': 6550,
    },
    {
      'name': 'GTX1650',
      'image': 'GTX1650.png',
      'price': 4956,
    },
    {
      'name': 'i3-13100',
      'image': 'i3-13100.jpg',
      'price': 4690,
    },
    {
      'name': 'i3-14100',
      'image': 'i3-14100.png',
      'price': 5950,
    },
    {
      'name': 'i5-13600K',
      'image': 'i5-13600K.png',
      'price': 11690,
    },
    {
      'name': '2TB-990PROSSD',
      'image': '2TB-990PROSSD.png',
      'price': 7399,
    },
    {
      'name': '950ProM2',
      'image': '950ProM2.png',
      'price': 7850,
    },
    {
      'name': 'MainboardMSI',
      'image': 'MainboardMSI.png',
      'price': 2750,
    },
    {
      'name': 'MainboarGIGABYTE',
      'image': 'MainboarGIGABYTE.png',
      'price': 2290,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าขายอุปกรณ์'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        leading: Image.asset('images/Logo.png'), // เพิ่มบรรทัดนี้
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.asset('images/${product['image']}'),
            title: Text(product['name']),
            subtitle: Text('ราคา: ${product['price']} ฿'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
                Text('0'), // ปรับเป็น dynamic ในที่นี้
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ซื้อเลย'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
