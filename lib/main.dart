import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx/pages/page2.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    final ThemeData lightTheme = ThemeData.dark();
    final ThemeData darkTheme = ThemeData.light();

    return GetMaterialApp(
      theme: isDarkMode ? lightTheme : darkTheme,

      // ThemeData(
      //     appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
      //     scaffoldBackgroundColor: Colors.black,
      //     textTheme: TextTheme()),

      home: const MyHomePage(),
      getPages: [
        GetPage(
          name: '/H',
          page: () => const MyHomePage(),
        ),
        GetPage(
          name: '/R',
          page: () => MyHomePage2(),
        ),
      ],
      showSemanticsDebugger: false,
    );
  }
}

// get.to
// get.back 
//get.off 
// get.offall
//get.argoment

//get.to(Homepage(),arguments:)