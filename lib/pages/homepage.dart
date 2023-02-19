import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Center(
              child: IconButton(
                  onPressed: () {
                    Get.toNamed('/R');
                  },
                  icon: const Icon(Icons.man)),
            ),
          ),
          IconButton(
              onPressed: () {
                Switch(
                  value: _isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                );
              },
              icon: const Icon(Icons.currency_exchange_outlined)),
        ],
      ),
    );
  }
}
