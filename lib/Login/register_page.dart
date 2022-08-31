import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
final VoidCallback showLoginPage;
const RegisterPage({Key? key, required this.showLoginPage,}):super(key: key);


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController =TextEditingController();
  final passwordController =TextEditingController();
  final confirmpasswordController =TextEditingController();
  final firstNameController =TextEditingController();
  final lastNameController =TextEditingController();
  final contactContorller =TextEditingController();
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
  Future signUp() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
          child: CircularProgressIndicator(),
        )
    );
    if (passwordConfirmed()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(), );
      addUSerDetail(
          firstNameController.text.trim(),
       lastNameController.text.trim(),
     int.parse(contactContorller.text.trim()),
    emailController.text.trim());

    }
    Navigator.of(context).pop();
  }



  Future addUSerDetail(String firstName,String lastName,int contactno,String email,) async{
    await FirebaseFirestore.instance.collection('user').add({
      'first name' :firstName,
      'last name': lastName,
      'contact no' :contactno,
      'email':email,

    });
  }

bool passwordConfirmed(){
      if (passwordController.text.trim()==confirmpasswordController.text.trim()){
        return true;
      }else {
        return false;
      }
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: ListView(padding: const EdgeInsets.all(25), children: [

                Image.asset(
                  'assets/Logo.png',
                  height: 150,
                  width: 250,

              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Enter your Details.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: firstNameController,
                  decoration: const InputDecoration(hintText: "First Name"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: lastNameController,
                  decoration: const InputDecoration(hintText: "Last Name"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: contactContorller,
                  decoration: const InputDecoration(hintText: "Contact no"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: "Email"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: confirmpasswordController,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Confirm Password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                child: GestureDetector(
                  onTap: signUp,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Already a Member?  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
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


  ]
              ),
                  ],
                ),
              ),

            ),

        );
  }
}
