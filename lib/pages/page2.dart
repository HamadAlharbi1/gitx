import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/HomeContrller.dart';

class MyHomePage2 extends StatelessWidget {
  MyHomePage2({super.key});

  final Homecontroller _name = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 169, 169),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          // IconButton(
          //     onPressed: () {
          //       _name.decrement();
          //     },
          //     icon: const Icon(Icons.remove)),
          GetBuilder<Homecontroller>(
              builder: ((controller) => Center(
                    child: Text(_name.name),
                  ))),
          const TextField(),
          GetBuilder<Homecontroller>(
              builder: ((controller) => Center(
                    child: Text(_name.email),
                  ))),
          const TextField(),
          // GetBuilder<Homecontroller>(
          //     builder: ((controller) => Center(
          //           child: Text(_name.counter.toString()),
          //         ))),
          // IconButton(
          //   onPressed: () {
          //     Get.to(() => Page3());
          //   },
          //   icon: const Icon(Icons.arrow_forward),
          // ),
          // IconButton(
          //     onPressed: () {
          //       _name.increment();
          //     },
          //     icon: const Icon(Icons.add))
        ]),
      ),
    );
  }
}
