import 'package:flutter/material.dart';
import 'package:mobile_frontend/views/EnterScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 390,
              height: 532,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(48),
               ),
                  color: Color(0xff7DBCB1),
              ),
              child: Column(
                children: [
                  SizedBox(height: 190,),
                  Image.asset('assets/images/logo.png'),
                  Text(
                    'Вас приветствует\n TravelLit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95),
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnterScreen()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Создать аккаунт ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 42,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95),
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnterScreen()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Войти ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }
}
