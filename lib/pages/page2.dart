import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment1 Page2"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Page number 2',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(onPressed:(){},
        backgroundColor: Colors.grey,
        child: const Text('PN2'),
      ),
    );
  }
}
