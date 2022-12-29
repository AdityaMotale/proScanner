import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/scan.ctrl.dart';
import 'check_out.view.dart';
import 'info.view.dart';
import 'scan.view.dart';
import '../widgets/itemCard.widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScanController ctrl = Get.put<ScanController>(ScanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      appBar: AppBar(
        title: const Text("QR Scanner"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const InfoView());
            },
            icon: const Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: Obx(() {
        if (ctrl.cartItems.isEmpty) {
          return const Padding(
            padding: EdgeInsets.all(200),
            child: Center(
              child: Text(
                "Your cart is empty! Please scan in order to add items in your cart",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        }

        return ListView.builder(
          itemCount: ctrl.cartItems.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: ItemCardWidget(
                title: ctrl.cartItems[index].title,
                imgSrc: ctrl.cartItems[index].imgSrc,
                quantity: ctrl.cartItems[index].quantity,
                price: ctrl.cartItems[index].price,
              ),
            );
          },
        );
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "scan",
            onPressed: () async {
              Get.to(() => const ScanView());
            },
            child: const Icon(Icons.qr_code_scanner),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            heroTag: "cart",
            onPressed: () {
              if (ctrl.cartItems.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Your cart is empty! Please add items in order to checkout",
                    ),
                  ),
                );
                return;
              }

              Get.to(() => const CheckOutView());
            },
            child: const Icon(Icons.shopping_bag),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
