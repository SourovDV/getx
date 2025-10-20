
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/App/Routes/Home/binding/home_buinding.dart';
import 'package:getx/App/Routes/Home/controller/home_controller.dart';
import 'package:getx/App/Routes/Home/view/dashboard.dart';
import 'package:getx/App/Routes/Home/view/home_view.dart';

class AppRoute{
  static final initialRoute = '/home';

  static final route =[
    GetPage(name: "/home", page:()=>HomeView(),binding:HomeBuinding()),
    GetPage(name: "/dashbiard", page: ()=>Dashboard())
  ];

}