import 'package:Plants_Info_final/Login/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  final _formKey = GlobalKey<FormState>();
  var newPassword = " ";
  final newPasswordController = TextEditingController();
  @override
  void dispose() {
    newPasswordController.dispose();
    super.dispose();
  }

  final currentUser = FirebaseAuth.instance.currentUser;

  changePassword() async {
    try {
      await currentUser!.updatePassword(newPassword);
      FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => LoginPage(
                    showRegisterPage: () {},
                  )));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.black,
        content: Text('Password has been Changed.'),
      ));
    } catch (error) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'New Password: ',
                    hintText: "Enter New Password",
                  ),
                  controller: newPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter new password';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        newPassword = newPasswordController.text;
                      });
                      changePassword();
                    }
                  },
                  child: Text('reset password'))
            ],
          ),
        ),
      ),
    );
  }
}
