import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner/controller.dart';
import 'package:qr_scanner/views/scan.view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final MainController ctrl = Get.put<MainController>(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Scanner"),
        centerTitle: true,
      ),
      body: Column(
        children: const [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await ctrl.scanCode();
          Get.to(() => const ScanView());
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
