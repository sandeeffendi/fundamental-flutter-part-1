import 'dart:async';

import 'package:design_ui_dengan_widget/latihan_theming_typography/data/api/api_services.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism_detail_response.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/detail/bookmark_icon_widget.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/detail/body_of_detail_screen.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_icon_provider.dart';
import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  final int tourismId;

  const DetailsScreen({super.key, required this.tourismId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final Completer<Tourism> _completerTourism = Completer();
  late Future<TourismDetailResponse> _futureTourismDetail;

  @override
  void initState() {
    super.initState();
    _futureTourismDetail = ApiServices().getDetailList(widget.tourismId);
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
            child: FutureBuilder(
              future: _completerTourism.future,
              builder: (context, snapshot) {
                return switch (snapshot.connectionState) {
                  ConnectionState.done => BookmarkIconWidget(
                    tourism: snapshot.data!,
                  ),
                  _ => const SizedBox(),
                };
              },
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      /// Detail screen Body
      body: FutureBuilder(
        future: _futureTourismDetail,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            /// Connection is waiting
            /// Return Circular Progress Indicator
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());

            /// Connection is done
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.hasError.toString()));
              }

              final tourismData = snapshot.data!.place;
              _completerTourism.complete(tourismData);

              return BodyOfDetailScreen(tourism: tourismData);

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
