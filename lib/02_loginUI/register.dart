import 'package:flutter/material.dart';

import 'login.dart';

class ManagerSignup extends StatefulWidget {
  const ManagerSignup({Key? key}) : super(key: key);

  @override
  State<ManagerSignup> createState() => _ManagerSignupState();
}

class _ManagerSignupState extends State<ManagerSignup> {

  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset('images/manager.png', width: 150, height: 150),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Hi',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 20
                          )
                      ),
                      Text(' MANAGER',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          )
                      ),
                    ],
                  ),
                  const Text('Register to continue',
                      style: TextStyle(
                          color: Colors.white
                      )
                  ),

                ],
              ),
            ),
          ),


          Expanded(
            flex: 4,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: ' Academy Name',
                          ),

                          controller: _nameController,
                          keyboardType: TextInputType.name,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Enter Academy Name';
                            }
                            else {
                              return null;
                            }
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email',
                          ),
                          controller: _emailController,
                          keyboardType: TextInputType.name,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Enter Email';
                            }
                            else {
                              return null;
                            }
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Phone No.',
                          ),
                          controller: _phoneController,
                          keyboardType: TextInputType.name,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Enter Phone No.';
                            }
                            else {
                              return null;
                            }
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure ? Icons.visibility : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _confirmpasswordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure ? Icons.visibility : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ManagerLogin()));
                            },
                            child: const Text('Register')
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already registered!'),
                            TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ManagerLogin()));
                                },
                                child: const Text('Login Here')),
                          ],
                        )
                      ]
                  ),
                ),
              ),
            ),
          ),

        ],
      ),


    );
  }
}
