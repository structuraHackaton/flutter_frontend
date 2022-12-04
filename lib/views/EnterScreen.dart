import 'package:flutter/material.dart';
import 'package:mobile_frontend/views/ChoosePathScreen.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/background.png"),
    fit: BoxFit.cover),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          Text('Войти',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35
          ),),
          SizedBox(height: 25,),
          Text('Почта',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 25
          ),),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 95),
            child: TextFormField(

            ),
          ),
          SizedBox(height: 10,),
          Text('Пароль',
          style: TextStyle(
            fontSize: 25
          ),),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 95),
            child: TextFormField(

            ),
          ),
          SizedBox(height: 27,),
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
                          builder: (context) => const ChoosePathScreen()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Войти",
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
      ),
    );
  }
}
