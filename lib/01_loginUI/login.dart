import 'package:flutter/material.dart';
import 'package:login_ui/01_loginUI/constants.dart';
import 'package:login_ui/01_loginUI/signup.dart';

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
            const Text('Login',
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

                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () { },
                        child: const Text('Forgot Password?',
                          style: kmd2,
                          ),
                      ),
                    ],
                  )

                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 100),
                foregroundColor: korange
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                  style: kmd,),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text('Sign Up',
                    style: kmd1,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}