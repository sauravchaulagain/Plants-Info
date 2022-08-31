import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(("Password reset link sent."
                  " Please check your email.")),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                content: Text(
              e.message.toString(),
            ));
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 195, 15),
              child: Container(
                child: Text(
                  "Enter your Email.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
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
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: GestureDetector(
                    onTap: passwordReset,
                    child: Text('Reset now'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
