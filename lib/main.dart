import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/splash.view.dart';

void main() {
  runApp(const ProScanner());
}

class ProScanner extends StatelessWidget {
  const ProScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ProScanner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const SplashView(),
    );
  }
}
