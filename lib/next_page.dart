import 'dart:math';

import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

        animation = Tween<double>(begin: 0.0,end: 2*pi,).animate(animationController);
        animationController.repeat();
  }

  @override
  void dispose() {
    

    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        builder: (context, child) {
                 return Transform(
          alignment: Alignment.center,
         
          transform: Matrix4.identity()..rotateY(animationController.value),
          child: Center(
            child: Hero(
              tag: 'button',
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ),
        );
        }, animation: animationController,

      ),
    );
  }
}
