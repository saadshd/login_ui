import 'package:flutter/material.dart';

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
      body: ListView(
        children: [
          MyListTile(title: 'UI 1', onTap: () {Navigator.pushNamed(context, '/01');}),
          MyListTile(title: 'UI 2', onTap: () {Navigator.pushNamed(context, '/02');}),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key, required this.title, required this.onTap}) : super(key: key);

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(),
      ],
    );
  }
}
