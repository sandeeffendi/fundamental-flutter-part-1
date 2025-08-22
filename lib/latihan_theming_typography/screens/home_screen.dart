import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/tourism_card.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tourism List")),
      body: 
      
      /// List view builder for TourismCard
      ListView.builder(
        itemCount: tourismList.length,
        itemBuilder: (context, index) {
          final tourism = tourismList[index];

          return TourismCard(tourism: tourism);
        },
      ),
    );
  }
}
