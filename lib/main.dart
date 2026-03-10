import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CardPage(),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blueGrey[100]!, width: 4),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('lib/pp.jpg'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'M Zainal Akbar',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3E50),
                  ),
                ),

                const Text(
                  'Mahasiswa IT - Semester 4',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    letterSpacing: 1.2,
                  ),
                ),

                const Divider(
                  height: 40,
                  thickness: 1.2,
                  color: Color(0xFFEEEEEE),
                  indent: 20,
                  endIndent: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.email_rounded,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'akbarzainalapp166@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
