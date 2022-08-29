import 'package:flutter/material.dart';

import 'package:code/home_page_view/home_view/home_view.dart';
import 'package:code/home_page_view/profile_view/profile_view.dart';
import 'package:code/home_page_view/transaction_view/transaction_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MUNTA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int focusBtnNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff212529),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, letterSpacing: 5),
        ),
      ),
      body: SafeArea(
        child: focusBtnNav == 0
            ? const HomeView()
            : focusBtnNav == 1
                ? const TransactionView()
                : focusBtnNav == 2
                    ? const ProfileView()
                    : const Text('Error'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color(0xff00b4d8),
        backgroundColor: const Color(0xffffffff),
        currentIndex: focusBtnNav,
        onTap: (value) {
          setState(() {
            focusBtnNav = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.location_pin,
              size: 28,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Transaction',
            icon: Icon(
              Icons.route,
              size: 28,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
