import 'package:assignment_1_3_page/pages/page1.dart';
import 'package:assignment_1_3_page/pages/page2.dart';
import 'package:assignment_1_3_page/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

//ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  List<Widget> pages = const [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Module 5 Assignment1'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Module5 Drawer Header'),
            ),
            ListTile(
              title: const Text('Page 1'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Page1();
                }));
              },
            ),
            ListTile(
              title: const Text('Page 2'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Page2();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Page 3'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Page3();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: pages.elementAt(currentPage),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.pages_outlined), label: "Page1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages_rounded), label: "Page2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages_sharp), label: "Page3")
        ],
        currentIndex: currentPage,
          onTap: (int index){
          setState(() {
            currentPage = index;
          });
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Text('FP'),
      ),
    );
  }
}
