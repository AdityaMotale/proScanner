import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qr_scanner/models/cartItem.model.dart';

class ScanController extends GetxController {
  RxList<CartItemModel> cartItems = <CartItemModel>[].obs;

  late final GlobalKey key;

  @override
  void onInit() {
    super.onInit();

    key = GlobalKey(debugLabel: "qr");
  }

  void addItemToCart(String data) {
    try {
      final parsedJson = jsonDecode(data);

      final CartItemModel cartItem = CartItemModel.fromJson(parsedJson);

      bool isAdded = false;

      for (var element in cartItems) {
        if (element.id == cartItem.id) {
          isAdded = true;
        }
      }

      if (isAdded) return;

      cartItems.add(cartItem);

      Get.back();
    } catch (e) {
      log(e.toString());
    }
  }
}
