import 'package:design_ui_dengan_widget/latihan_tourism_app/models/tourism.dart';
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Tourism name
                        Text(
                          tourism.name,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),

                        /// Tourism address
                        Text(
                          tourism.address,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red),
                        SizedBox(width: 5),
                        Text(tourism.like.toString()),
                      ],
                    ),
                  ],
                ),
              ),

              /// Tourism Description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(tourism.description),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
