import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../auth/forgot_password.dart';
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
  final requiredValidator =
      RequiredValidator(errorText: 'Enter a valid password');

  Future signIn() async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
          child: CircularProgressIndicator(),
        ),
      );
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());

      navigatorKey.currentState!.popUntil((route) => route.isFirst);

      // Navigator.pushAndRemoveUntil(context,
      //   MaterialPageRoute(builder: (context) => Home()), (route) => false);
    } on FirebaseAuthException {
      showAlertDialog(context);
    } catch (e) {
      print(e);
    }
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginPage(showRegisterPage: () {})));
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Error!"),
      content: Text("Please Enter a Valid Username or Password."),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  bool _isHidden = true;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  frontDecoration(),
                  SizedBox(height: 10),
                  emailField(),
                  passwordField(),
                  SizedBox(height: 10),
                  forgetpasswordField(),
                  SizedBox(height: 15),
                  loginField(),
                  endfield(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: MultiValidator([
          RequiredValidator(errorText: 'Enter Your Email.'),
          EmailValidator(errorText: "Enter a valid email")
        ]),
        controller: emailController,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          errorStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.normal, fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
          label: Text(
            'Email',
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.purpleAccent,
            ),
          ),
        ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
      child: TextFormField(
        controller: passwordController,
        obscureText: _isHidden,
        textInputAction: TextInputAction.next,
        validator: requiredValidator,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return 'Enter your Password.';
        //    } else if (value.length < 8) {
        //      return 'Password must contain 8 letters';
        //   } else {
        //     return null;
        //   }
        // },
        decoration: InputDecoration(
          errorStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.normal, fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.greenAccent)),
          hintText: 'Password',
          suffixIcon: IconButton(
            // color: theme.iconTheme.color,
            onPressed: () {
              setState(() {
                _isHidden = !_isHidden;
              });
            },
            icon: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
          ),
          label: Text(
            'Password',
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.purpleAccent,
            ),
          ),
        ),
      ),
    );
  }

  Widget loginField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.0),
      child: GestureDetector(
        onTap: () {
          if (formkey.currentState!.validate()) {
            signIn();
          }
        },
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
    );
  }

  Widget frontDecoration() {
    return Column(
      children: [
        Image.asset(
          'assets/Logo.png',
          height: 150,
          width: 250,
        ),
        Text(
          "Hello! ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          "Welcome to Plants Info",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }

  Widget forgetpasswordField() {
    return Padding(
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
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget endfield() {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Not a Member?  ",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
        SizedBox(height: 150),
        Text(
          '@ developed by Saurav.',
          style: TextStyle(
            fontFamily: 'hello',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black26,
          ),
        )
      ],
    );
  }

  void passwordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
