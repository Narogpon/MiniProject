import 'package:flutter/material.dart';

// สร้างคลาส AppTheme เพื่อเก็บธีมทั้งหมดของแอปพลิเคชัน
class AppTheme {
  // เนื่องจากเป็นคลาสสแตทิกเราจึงสามารถใช้คอนสตรักเตอร์และแค่เพียงเมทอดสถิตสำหรับการสร้างธีมที่จะใช้ในทั้งแอปพลิเคชัน
  AppTheme._();

  // สร้างเมทอดสถิตสำหรับการสร้างธีมที่กำหนดไว้
  static final ThemeData lightTheme = ThemeData(
    // กำหนดสีหลักของแอปพลิเคชัน
    primarySwatch: Colors.blue,
    // กำหนดสีพื้นหลังของ AppBar
    appBarTheme: AppBarTheme(
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 0, // กำหนดให้ไม่มีเงาใต้ AppBar
      iconTheme: IconThemeData(color: Colors.black), // กำหนดสีไอคอนใน AppBar
    ),
  );
}
