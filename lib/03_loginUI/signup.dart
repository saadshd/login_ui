import 'package:flutter/material.dart';
import 'package:login_ui/03_loginUI/constants.dart';
import 'package:login_ui/03_loginUI/login.dart';

class SignupThree extends StatefulWidget {
  const SignupThree({Key? key}) : super(key: key);

  @override
  State<SignupThree> createState() => _SignupThreeState();
}

class _SignupThreeState extends State<SignupThree> {

  bool isObscure = true;
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: kskin,
        ),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: kblack,
                    backgroundImage: AssetImage('images/little.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tasbeeh Counter',
                    style: klg,
                  ),
                ],
              ),

              const SizedBox(height: 35,),
              const Text('Signup to continue',
                style: klg1,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [

                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.person),
                        ),
                        controller: nameController,
                      ),

                      const SizedBox(height: 20,),

                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                        controller: emailController,
                      ),

                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isObscure ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                          ),
                        ),
                        obscureText: isObscure,
                        controller: passwordController,
                      ),

                      const SizedBox(height: 50,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginThree()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 100),
                          foregroundColor: kblack,
                          backgroundColor: kskin,
                        ),
                        child: const Text('Signup'),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account",
                            style: kmd,),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginThree()),
                              );
                            },
                            child: const Text('Log In',
                              style: kmd1,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}