import 'package:assignment_1_3_page/pages/page1.dart';
import 'package:assignment_1_3_page/pages/page2.dart';
import 'package:assignment_1_3_page/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//ignore: must_be_immutable
class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);

  int currentPage = 0;
List<Widget> pages= [
  const Page1(),
  const Page2(),
  const Page3()
];
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
      // actions: Drawer(backgroundColor: Colors.orange,
      // child: ListView(padding: EdgeInsets.zero,
      // children: const <Widget>[
      //   DrawerHeader(child: Text('Assignment1'))
      // ],)),
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
toolbarHeight: 55,
elevation: 10,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Text('PN:1'),

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.pages_sharp), label: 'Page 1'),
          BottomNavigationBarItem(icon: Icon(Icons.pages_sharp), label: 'Page 2'),
          BottomNavigationBarItem(icon: Icon(Icons.pages_sharp), label: 'Page 3')
        ],
        onTap: (int index){
          if (index == 0){

          }
          if (index == 1){

          }
          if (index == 2){

          }
      }
      ),
      );

  }
}
