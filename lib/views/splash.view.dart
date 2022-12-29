import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final String title = "ProScanner";

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.off(() => const HomeView());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade700,
      body: Center(
        child: TweenAnimationBuilder(
          tween: StepTween(begin: 3, end: 10),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInExpo,
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title.substring(0, 3),
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  title.substring(3, value),
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
