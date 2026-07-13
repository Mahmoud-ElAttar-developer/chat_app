import 'package:chat_app/login_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var formKey = GlobalKey<FormState>();
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/2025-01-01-1735733506.webp', height: 200),
                  Gap(20),
                  Text(
                    'Create your account',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Gap(20),

                  // name-----------------------------------------------------------
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter your name here',
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      label: Text(
                        'Name',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Gap(20),

                  // email-----------------------------------------------------------
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email here',
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Gap(20),

                  // password-----------------------------------------------------------
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: isShow,
                    decoration: InputDecoration(
                      hintText: 'Enter your Password here',
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isShow = !isShow;
                          });
                        },
                        icon: Icon(
                          isShow ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Gap(20),

                 SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4732ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ),
                          );
                        },
                        child: Text('Sign in'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
