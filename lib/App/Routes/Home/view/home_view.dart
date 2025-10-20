import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/App/Routes/Home/controller/home_controller.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(controller.count1.toString())),
            Obx(() => Text(controller.count2.toString())),
            Obx(() => Text(controller.count3.toString())),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => controller.increment1(),
                  child: Text("First"),
                ),
                ElevatedButton(
                  onPressed: () => controller.increment2(),
                  child: Text("Second"),
                ),
                ElevatedButton(
                  onPressed: () => controller.increment3(),
                  child: Text("Third"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
