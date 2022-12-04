import 'package:flutter/material.dart';
import 'package:mobile_frontend/views/localAndWebObjectsView.dart';

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
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logoDark.png'),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text('Церковь Рождества Христова — недействующий православный храм в историческом центре Ярославля, на берегу Волги. Один из лучших памятников Ярославской школы зодчества и живописи XVII века.',
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff7DBCB1)),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LocalAndWebObjectsView()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: Text(
                          "Продолжеть рассказ с виртуальным ассистентом",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
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
