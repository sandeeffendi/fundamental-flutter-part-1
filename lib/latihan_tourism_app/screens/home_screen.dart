import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/screens/tourims_card.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/models/tourism.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tourism List")),
      body: ListView.builder(
        itemCount: tourismList.length,
        itemBuilder: (context, index) {
          final tourism = tourismList[index];

          return TourismCard(tourism: tourism);
        },
      ),
    );
  }
}
