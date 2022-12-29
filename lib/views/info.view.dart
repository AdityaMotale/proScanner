import 'package:flutter/material.dart';

import '../widgets/about_card.widget.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: const [
            AboutCardWidget(
              name: "Chandrakant Gajjalwar",
              rn: "CSE TY-A 141",
            ),
            AboutCardWidget(
              name: "Mangesh Joshi",
              rn: "CSE TY-A 152",
            ),
            AboutCardWidget(
              name: "Varad Deshpande",
              rn: "CSE TY-A 132",
            ),
            AboutCardWidget(
              name: "Atharva Patil",
              rn: "CSE TY-A 140",
            ),
          ],
        ),
      ),
    );
  }
}
