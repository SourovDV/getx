import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/App/Modules/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoute.initialRoute,
    getPages: AppRoute.route,
    );
  }
}
