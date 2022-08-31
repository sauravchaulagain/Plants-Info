import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth/Forgot_Password.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/Logo.png',
                    height: 150,
                    width: 250,
                  ),
                ),
                Container(
                  child: Text(
                    "Hello!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Container(
                  child: Text(
                    "Welcome to Plants Info",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Your Email.';
                          } else {
                            return null;
                          }
                        },
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          suffix: InkWell(
                            onTap: passwordView,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ForgotPassword();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0),
                  child: GestureDetector(
                    onTap: () => signIn(),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a Member?  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: widget.showRegisterPage,
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )));
  }

  void passwordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import '../auth/Forgot_Password.dart';
// import '../main.dart';
//
// class LoginPage extends StatefulWidget {
//   final VoidCallback showRegisterPage;
//   const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   Future signIn() async {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: emailController.text.trim(),
//           password: passwordController.text.trim());
//     } on FirebaseAuthException catch (e) {
//       print(e);
//     }
//     navigatorKey.currentState!.popUntil((route) => route.isFirst);
//   }
//
//   @override
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//
//     super.dispose();
//   }
//
//   bool _isHidden = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: SafeArea(
//             child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   child: Image.asset(
//                     'assets/Logo.png',
//                     height: 150,
//                     width: 250,
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     "Hello!",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     "Welcome to Plants Info",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.red),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: emailController,
//                         textInputAction: TextInputAction.next,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Email',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.red),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: passwordController,
//                         textInputAction: TextInputAction.done,
//                         obscureText: _isHidden,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Password',
//                           suffix: InkWell(
//                             onTap: passwordView,
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 15),
//                               child: Icon(
//                                 Icons.visibility,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return ForgotPassword();
//                               },
//                             ),
//                           );
//                         },
//                         child: Text(
//                           "Forgot password?",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, color: Colors.black),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 80.0),
//                   child: GestureDetector(
//                     onTap: () => signIn(),
//                     child: Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.greenAccent,
//                           borderRadius: BorderRadius.circular(12)),
//                       child: Center(
//                         child: Text(
//                           'Sign in',
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Not a Member?  ",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     GestureDetector(
//                       onTap: widget.showRegisterPage,
//                       child: Text(
//                         "Register Now",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.blue),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )));
//   }
//
//   void passwordView() {
//     setState(() {
//       _isHidden = !_isHidden;
//     });
//   }
// }
