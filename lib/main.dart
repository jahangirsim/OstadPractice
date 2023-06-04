import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: "Assignment1",
      // theme: ThemeData(
      //   primarySwatch: Colors.grey,
      // ),
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatelessWidget {
  const Assignment1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment1"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Page number 1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
