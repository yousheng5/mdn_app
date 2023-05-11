import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mdn',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mdn'),
      ),
      body: Center(
        child: // Flutter1.22以降のみ
            ElevatedButton(
          child: const Text('Btn'),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.black,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
