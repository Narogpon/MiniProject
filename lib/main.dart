import 'package:flutter/material.dart';
import 'package:flutter_application_mini/page2.dart';
import 'package:flutter_application_mini/page3.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // ใช้ธีมที่กำหนดในไฟล์ app_theme.dart
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  String _errorMessage = '';

  // Function to navigate to Page2
  void _navigateToPage2() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page2()),
    );
  }

  // Function to navigate to Page3
  void _navigateToPage3() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page3()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าหลัก'),
        backgroundColor: Colors.purple,
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        decoration: BoxDecoration(
          // กำหนดพื้นหลังเป็นรูปภาพ
          image: DecorationImage(
            image: AssetImage('images/Background .png'), // รูปภาพพื้นหลัง
            fit: BoxFit.cover, // ปรับขนาดรูปภาพให้เต็มพื้นที่
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 255, 255, 255)
                  .withOpacity(0.20), // สีเทาทับรูปภาพเพื่อทำให้โปร่งใส
              BlendMode.srcATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'images/Logo.png',
                width: 350,
                height: 350,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              const Text(
                'ยินดีต้อนรับเข้าสู่ระบบ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white, // สีพื้นหลังของช่องข้อมูล
                        borderRadius:
                            BorderRadius.circular(8), // ทำให้มีมุมโค้ง
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // สีเงา
                            spreadRadius: 3, // รัศมีการกระจายเงา
                            blurRadius: 5, // ความเบลอ
                            offset: const Offset(0, 3), // ตำแหน่งเงา
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'ชื่อผู้ใช้',
                          border: InputBorder.none, // กำหนดให้ไม่มีเส้นขอบ
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white, // สีพื้นหลังของช่องข้อมูล
                        borderRadius:
                            BorderRadius.circular(8), // ทำให้มีมุมโค้ง
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // สีเงา
                            spreadRadius: 3, // รัศมีการกระจายเงา
                            blurRadius: 5, // ความเบลอ
                            offset: const Offset(0, 3), // ตำแหน่งเงา
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'รหัสผ่าน',
                          border: InputBorder.none, // กำหนดให้ไม่มีเส้นขอบ
                        ),
                      ),
                    ),
                    if (_errorMessage.isNotEmpty)
                      Text(
                        _errorMessage,
                        style: const TextStyle(color: Colors.red),
                      ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: _navigateToPage2,
                          child: Text('สมัคร'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: _navigateToPage3,
                          child: Text('ถัดไป'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
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

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
