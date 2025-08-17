import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';

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
        child: Row(
          children: [
            /// Card image thumbnail
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 80,
                minHeight: 80,
                maxWidth: 120,
                minWidth: 120,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Hero(
                  tag: tourism.image,
                  child: Image.network(tourism.image, fit: BoxFit.cover),
                ),
              ),
            ),

            SizedBox.square(dimension: 8),

            /// Card Information
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// Card Title
                  Hero(
                    tag: tourism.name,
                    child: Text(
                      tourism.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),

                  /// Card Address
                  Row(
                    children: [
                      Icon(Icons.pin_drop),
                      SizedBox.square(dimension: 6),
                      Expanded(
                        child: Text(
                          tourism.address,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),

                  SizedBox.square(dimension: 8),

                  /// Card Likes
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox.square(dimension: 6),
                      Expanded(
                        child: Text(
                          tourism.like.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
