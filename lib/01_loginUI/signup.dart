import 'package:flutter/material.dart';
import 'package:login_ui/01_loginUI/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('images/logo.png'),
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Maintenance',
                      style: klg,),
                    Text('Box',
                      style: klg1,),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 35,),
            const Text('SignUp',
              style: klg,),
            const SizedBox(height: 10,),
            const Text('Connect with us for Better Work',
              style: kmd,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      hintText: 'Name',
                      prefixIcon: Icon(Icons.person,),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      hintText: 'Contact',
                      prefixIcon: Icon(Icons.call,),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email,),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: const InputDecoration(
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
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 100),
                foregroundColor: korange,
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}