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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _likes = 0;

  void _like() {
    setState(() {
      _likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab L1 · $studentId')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person, size: 96),
                const Text(
                  '$studentName - $studentId',
                  textAlign: TextAlign.center,
                ),
                Text('Likes: $_likes'),
                FilledButton(onPressed: _like, child: const Text('Like')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
