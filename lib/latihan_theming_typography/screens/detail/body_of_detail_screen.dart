import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:flutter/material.dart';

class BodyOfDetailScreen extends StatelessWidget {
  final Tourism tourism;

  const BodyOfDetailScreen({super.key, required this.tourism});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Detail screen tourism image
            Padding(
              padding: const EdgeInsets.all(25),
              child: Hero(
                tag: tourism.image,
                child: Image.network(tourism.image),
              ),
            ),

            /// Detail screen tourism information
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    /// Detail screen tourism name & address
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Tourism name
                        Hero(
                          tag: tourism.name,
                          child: Text(
                            tourism.name,
                            style: Theme.of(context).textTheme.headlineLarge,
                            softWrap: true,
                          ),
                        ),

                        SizedBox.square(dimension: 6),

                        /// Tourism address
                        Text(
                          tourism.address,
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),

                  SizedBox.square(dimension: 7),

                  /// Detail screen tourism likes
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        tourism.like.toString(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Detail screen Tourism Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Text(
                tourism.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
