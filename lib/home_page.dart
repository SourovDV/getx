import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final dependency = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
                ()=>Text(dependency.count1.toString())
            ),
            Obx(
                    ()=>Text(dependency.count2.toString())
            ),
            Obx(
                    ()=>Text(dependency.count3.toString())
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: ()=>dependency.increment1(), child: Text("First")),
                ElevatedButton(onPressed: ()=>dependency.increment2(), child: Text("Second")),
                ElevatedButton(onPressed: ()=>dependency.increment3(), child: Text("Third")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
