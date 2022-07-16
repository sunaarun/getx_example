import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/my_controller.dart';

class ClassThree extends StatelessWidget{

  ClassThree();

  final controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    print('Inside class three \n\n');
    return GetBuilder<MyController>(
      init : MyController(),
      builder: (_){
        return  Card(
          color: Colors.yellow,
          elevation: 6,
          child: Container(
            width: 150,
            height: 150,
            child: Center(
              child: Text("${controller.counter}", style: TextStyle(fontSize: 40) ,
              ),
            ),
          ),
        );
      },

    );
  }
}
