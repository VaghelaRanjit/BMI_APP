import 'package:final_bmi_app/screens/auth/login_screen.dart';
import 'package:final_bmi_app/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //this is for come out from the application uning back button
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        //   backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          automaticallyImplyLeading: true,
          title: const Text(
            'SignUp Here ',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',

                          //   helperText: 'Enter Email , e.g rv5765853@gmail.com',
                          prefixIcon: Icon(
                            Icons.alternate_email,
                            color: Colors.deepPurple,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Emial';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          //  helperText: 'Enter Your password',
                          prefixIcon:
                              Icon(Icons.lock_open, color: Colors.deepPurple)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              RoundButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _auth.createUserWithEmailAndPassword(
                        email: emailController.text.toString(),
                        password: passwordController.text.toString());
                  }
                },
                title: 'SignUp',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Text('Login'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
