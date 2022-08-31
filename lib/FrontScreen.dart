import 'package:Plants_Info_final/Login/Login.dart';
import 'package:Plants_Info_final/Login/register_page.dart';
import 'package:flutter/material.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/app-background-png-4-Transparent-Images-Free.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 150),
                Image.asset('assets/Logo.png'),
                SizedBox(height: 80),
                Text(
                  'Gardener At Home ',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                Text(
                  'A step towards a better\n tomorrow.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 230),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      //  border: Border.all(color: Colors.white),
                      color: Colors.deepOrange),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(
                            showRegisterPage: () {},
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      //  border: Border.all(color: Colors.white),
                      color: Colors.blueAccent.shade100),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(
                            showLoginPage: () {},
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
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
}
