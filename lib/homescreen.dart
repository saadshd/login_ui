import 'package:flutter/material.dart';
import 'package:login_ui/01_loginUI/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Signup UI'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('UI 1')
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('UI 2')
          ),

        ],
      ),
    );
  }
}
