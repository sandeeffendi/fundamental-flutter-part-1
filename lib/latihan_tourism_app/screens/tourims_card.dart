import 'package:design_ui_dengan_widget/latihan_tourism_app/routes/navigation_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/models/tourism.dart';

class TourismCard extends StatelessWidget {
  const TourismCard({super.key, required this.tourism});

  final Tourism tourism;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NavigationRoutes.detailRoute.name,
            arguments: tourism,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(tourism.name, style: Theme.of(context).textTheme.titleLarge),
            Text(
              tourism.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
