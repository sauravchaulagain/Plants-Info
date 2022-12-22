import 'package:Plants_Info_final/auth/mainpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Information extends StatefulWidget {
  final bool bool1;
  final bool bool2;

  const Information({super.key, required this.bool1, required this.bool2});
  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  CollectionReference order = FirebaseFirestore.instance.collection('order');
  late String textName;
  late String textLocation;
  late String textNumber;

  void _close() {
    Navigator.pop(context);
  }

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Enter Your detail to order.',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {
                    textName = value;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: RequiredValidator(errorText: 'required*'),
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
                      'Name',
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
                  onChanged: (value) {
                    textNumber = value;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: RequiredValidator(errorText: 'required*'),
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
                  onChanged: (value) {
                    textLocation = value;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: RequiredValidator(errorText: 'required*'),
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
                      'Location',
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
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: const Text("Are You Sure?"),
                              content: const Text(
                                  "You are going to hire a gardener."),
                              actions: <Widget>[
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: submit,
                                      child: const Text(
                                        "Yes",
                                        style: TextStyle(
                                          fontFamily: 'hello',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: const Text(
                                        "No",
                                        style: TextStyle(
                                          fontFamily: 'hello',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ));
                  },
                  child: Container(
                    height: 40,
                    width: 250,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Order',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  submit() async {
    await order.add({
      'name': textName,
      'contact': textNumber,
      'location': textLocation,
    }).then((value) => print('user added'));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ));
  }
}
