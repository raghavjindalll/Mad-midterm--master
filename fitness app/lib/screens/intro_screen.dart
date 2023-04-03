import 'package:flutter/material.dart';
import 'package:globo_fitness/shared/menu_bottom.dart';
import 'package:globo_fitness/shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text('Globo Fitness')),
            drawer: MenuDrawer(),
            bottomNavigationBar: MenuBottom(),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/1.jpg'), fit: BoxFit.cover)),
              child: Center(
                  child: Container(
                    padding: EdgeInsets.all(24),         //padding will be set on all sides of the text
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70, //background with opacity 70%
                ),
                child: Text(
                    'Commit to be fit, dare to be great \nwith Globo Fitness!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          color: Colors.grey,
                        )
                      ]
                    ),),
              )),
            ));
  }
}