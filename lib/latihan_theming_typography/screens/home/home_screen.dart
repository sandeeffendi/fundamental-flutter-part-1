import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/provider/home/tourism_list_provider.dart';
import 'package:design_ui_dengan_widget/static/tourism_list_result_state.dart';
import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/home/tourism_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late final Future<TourismListResponse> _futureTourismResponse;

  @override
  void initState() {
    // _futureTourismResponse = ApiServices().getTourismList();
    super.initState();

    Future.microtask(() {
      context.read<TourismListProvider>().fetchTourismList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tourism List")),
      body: Consumer<TourismListProvider>(
        builder: (context, value, child) {
          return switch (value.resultState) {
            /// Loading state value
            TourismListLoadingState() => const Center(
              child: CircularProgressIndicator(),
            ),

            /// Loaded state value
            TourismListLoadedState(data: var tourismList) => ListView.builder(
              itemCount: tourismList.length,
              itemBuilder: (BuildContext context, int index) {
                final tourism = tourismList[index];

                /// Return Tourism Card with data from TourismListLoadedState
                return TourismCard(
                  tourism: tourism,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      NavigationRoutes.detailRoute.name,
                      arguments: tourism.id,
                    );
                  },
                );
              },
            ),

            /// Error state value
            TourismListErrorState(error: var message) => Center(
              child: Text(message),
            ),

            /// Default value
            _ => const SizedBox(),
          };
        },
      ),

      // body: FutureBuilder(
      //   future: _futureTourismResponse,
      //   builder: (context, snapshot) {
      //     switch (snapshot.connectionState) {
      //       /// Case of connection waiting
      //       case ConnectionState.waiting:
      //         return Center(child: CircularProgressIndicator());

      //       /// Case of Connection done
      //       case ConnectionState.done:

      //         /// Snapshot error
      //         if (snapshot.hasError) {
      //           return Center(child: Text(snapshot.hasError.toString()));
      //         }

      //         /// Initiate List of tourism with snapshot data of places
      //         final listOfTourism = snapshot.data!.places;

      //         /// Snapshot has no error
      //         /// Return Tourism Card with List View Builder
      //         return ListView.builder(
      //           itemCount: listOfTourism.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             final tourism = listOfTourism[index];
      //             return TourismCard(
      //               tourism: tourism,
      //               onTap: () => Navigator.pushNamed(
      //                 context,
      //                 NavigationRoutes.detailRoute.name,
      //                 arguments: tourism.id,
      //               ),
      //             );
      //           },
      //         );

      //       /// Default case
      //       default:
      //         return SizedBox();
      //     }
      //   },
      // ),

      // body:
      //     /// List view builder for TourismCard
      //     ListView.builder(
      //       itemCount: tourismList.length,
      //       itemBuilder: (context, index) {
      //         final tourism = tourismList[index];

      //         return TourismCard(tourism: tourism);
      //       },
      //     ),
    );
  }
}
