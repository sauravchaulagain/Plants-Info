import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final contactContorller = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    contactContorller.dispose();
    super.dispose();
  }

  Future signUp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      addUSerDetail(
          firstNameController.text.trim(),
          lastNameController.text.trim(),
          int.parse(contactContorller.text.trim()),
          emailController.text.trim());
    }
    Navigator.of(context).pop();
  }

  Future addUSerDetail(
    String firstName,
    String lastName,
    int contactno,
    String email,
  ) async {
    await FirebaseFirestore.instance.collection('user').add({
      'first name': firstName,
      'last name': lastName,
      'contact no': contactno,
      'email': email,
    });
  }

  bool passwordConfirmed() {
    if (passwordController.text.trim() ==
        confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  var formkey = GlobalKey<FormState>();
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Logo.png',
                      height: 150,
                      width: 250,
                    ),
                    Text(
                      "Enter your Details.",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: RequiredValidator(errorText: 'required*'),
                      controller: firstNameController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        label: Text(
                          'First Name',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: RequiredValidator(errorText: 'required*'),
                      controller: lastNameController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        label: Text(
                          'Last Name',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: RequiredValidator(errorText: 'required*'),
                      controller: contactContorller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        label: Text(
                          'Contact',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'required*'),
                        EmailValidator(errorText: 'enter a valid email'),
                      ]),
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        label: Text(
                          'Email',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: passwordValidator,
                      controller: passwordController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: confirmpasswordController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        label: Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80.0),
                      child: GestureDetector(
                        onTap: () {
                          if (formkey.currentState!.validate()) {
                            signUp();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Sign Up',
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
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Already a Member?  ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
