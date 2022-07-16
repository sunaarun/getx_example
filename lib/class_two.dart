import 'package:flutter/material.dart';
import 'package:getx_app/class_three.dart';

class ClassTwo extends StatelessWidget {

  const ClassTwo();

  @override
  Widget build(BuildContext context) {
    print('Inside class two');
    return  ClassThree();
  }
}
