
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/class_two.dart';
import 'package:getx_app/my_controller.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClassOne()
    );
  }
}
class ClassOne extends StatelessWidget {
   ClassOne({Key? key}) : super(key: key);
  final controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    print('Inside Class One');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX App'),
      ),
      body: GetBuilder<MyController>(
        init:MyController() ,
        builder: (_){
          return  Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  color: Colors.red,
                  elevation: 6,
                  child: Container(width: 150, height: 150,
                    child: Center(child:

                    Text('${controller.counter}', style: TextStyle(fontSize: 40)

                    ),
                    ),
                  ),),
                const ClassTwo(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}




