import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Tourism tourism;

  const DetailsScreen({super.key, required this.tourism});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.network(tourism.image),
              ),
              Padding(
                /// Tourism Image
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Title
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Tourism name
                          Text(
                            tourism.name,
                            style: Theme.of(context).textTheme.headlineLarge,
                            softWrap: true,
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

              /// Tourism Description
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
      ),
    );
  }
}
