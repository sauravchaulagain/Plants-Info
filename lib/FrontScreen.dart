import 'package:Plants_Info_final/Login/register_page.dart';
import 'package:flutter/material.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/app-background-png-4-Transparent-Images-Free.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150),
                Image.asset('assets/Logo.png'),
                const SizedBox(height: 80),
                const Text(
                  'Gardener At Home ',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                const Text(
                  'A step towards a better\n tomorrow.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 230),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      //  border: Border.all(color: Colors.white),
                      color: Colors.deepOrange),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Center(
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
                const SizedBox(height: 10),
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
                    child: const Center(
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
