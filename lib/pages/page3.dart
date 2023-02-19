import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/HomeContrller.dart';

class Page3 extends StatelessWidget {
  final Homecontroller _homecontroller = Get.find();
  Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetBuilder<Homecontroller>(
            builder: ((controller) => Center(
                  child: Text(_homecontroller.name),
                ))),
        GetBuilder<Homecontroller>(
            builder: ((controller) => Center(
                  child: Text(_homecontroller.email),
                ))),
        GetBuilder<Homecontroller>(
            builder: ((controller) => Center(
                  child: Text(_homecontroller.phone),
                ))),
      ],
    ));
  }
}
