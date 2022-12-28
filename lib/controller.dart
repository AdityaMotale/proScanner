import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MainController extends GetxController {
  RxList<Barcode> qrList = <Barcode>[].obs;

  late final GlobalKey key;

  @override
  void onInit() {
    super.onInit();

    key = GlobalKey(debugLabel: "qr");
  }
}
