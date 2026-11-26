import 'package:flutter/material.dart';

const studentId = '67110643';
const studentName = 'ปวริศร์ จันทวรรณ์';

void main() {
  runApp(
    MaterialApp(
      title: 'About me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab L1 · $studentId')),
      body: const SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 96),
                Text('$studentName - $studentId', textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
