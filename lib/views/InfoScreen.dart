import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
            Text('1. Церковь Рождества Христова',
            style: TextStyle(
              fontSize: 20
            ),),
            Container(
              width: 240,
              color: Colors.white,
              height: 212,
              child: Image.asset('assets/images/church.png'),
            ),
            Text('Церковь Рождества Христова — недействующий православный храм в историческом центре Ярославля, на берегу Волги. Один из лучших памятников Ярославской школы зодчества и живописи XVII века.',
            style: TextStyle(
              fontSize: 20
            ),),
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
                        "Продолжеть рассказ с виртуальным ассистентом",
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
