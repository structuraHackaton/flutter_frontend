import 'package:flutter/material.dart';

class ChoosePathScreen extends StatefulWidget {
  const ChoosePathScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePathScreen> createState() => _ChoosePathScreenState();
}

class _ChoosePathScreenState extends State<ChoosePathScreen> {
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
            Text('Выберите маршрут',
            style: TextStyle(
              fontSize: 35
            ),),
            SizedBox(height: 45,),
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
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "Маршрут недели",
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
            SizedBox(height: 28,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95),
              child: Container(
                height: 74,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "Маршрут по архетектурным местам",
                        textAlign: TextAlign.center,
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
            SizedBox(height: 28,),
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
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "Создать маршрут",
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
