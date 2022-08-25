import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginUI(),
    );
  }
}

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/logo.png'),
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Maintenance',
                      style: klg,),
                    Text('Box',
                      style: klg1,),
                  ],
                ),
              ],
            ),

            SizedBox(height: 35,),
            Text('Login',
              style: klg,),
            SizedBox(height: 10,),
            Text('Connect with us for Better Work',
              style: kmd,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                        ),
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email,),
                    ),
                  ),

                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock,),
                      suffixIcon: Icon(Icons.visibility_off_outlined,),
                    ),
                  ),

                ],
              ),
            ),

            ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical:  10,horizontal: 100),
                  // primary: korange,
                  // onPrimary: Colors.white,
                ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style: kmd,),
                Text(' Sign Up',
                  style: kmd1,),
              ],
            ),




          ],
        ),
      ),
    );
  }
}

