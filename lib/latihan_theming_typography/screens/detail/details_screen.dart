import 'dart:async';

import 'package:design_ui_dengan_widget/latihan_theming_typography/detail/bookmark_icon_widget.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/detail/body_of_detail_screen.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_icon_provider.dart';
import 'package:design_ui_dengan_widget/provider/detail/tourism_detail_provider.dart';
import 'package:design_ui_dengan_widget/static/tourism_detail_result_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  final int tourismId;

  const DetailsScreen({super.key, required this.tourismId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<TourismDetailProvider>().fetchTourismProvider(
        widget.tourismId,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Detail screen App bar
      appBar: AppBar(
        title: Text('Detail Screen'),

        /// Detail screen Bookmark Icon Widget
        actions: [
          ChangeNotifierProvider(
            create: (context) => BookmarkIconProvider(),
            child: Consumer<TourismDetailProvider>(
              builder: (context, value, child) {
                return switch (value.resultState) {
                  TourismDetailLoadedState(data: var tourism) =>
                    BookmarkIconWidget(tourism: tourism),
                  _ => const SizedBox(),
                };
              },
            ),
          ),
        ],
      ),

      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      /// Body of detail screen with TourismDetailProvider Data
      body: Consumer<TourismDetailProvider>(
        builder: (context, value, child) {
          return switch (value.resultState) {
            /// Loading State value
            TourismDetailLoadingState() => const Center(
              child: CircularProgressIndicator(),
            ),

            /// Loaded State value
            TourismDetailLoadedState(data: var tourismDetail) =>
              BodyOfDetailScreen(tourism: tourismDetail),

            /// Error State value
            TourismDetailErrorState(error: var message) => Center(
              child: Text(message),
            ),

            _ => const SizedBox(),
          };
        },
      ),
    );
  }
}
