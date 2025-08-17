import 'package:design_ui_dengan_widget/latihan_cupertino_app/routes/cupertino_routes.dart';
import 'package:flutter/cupertino.dart';

class CupertinoFeedsScreen extends StatelessWidget {
  const CupertinoFeedsScreen({super.key});

  /// CP Pop up modal method
  void _openDialog(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text('Select Category'),
          actions: [
            /// business action sheet
            CupertinoActionSheetAction(
              child: const Text('Business'),
              onPressed: () => Navigator.pushNamed(
                context,
                CupertinoNavigationRoutes.category.name,
                arguments: 'Business',
              ),
            ),

            /// technology action sheet
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  CupertinoNavigationRoutes.category.name,
                  arguments: 'Technology',
                );
              },
              child: const Text('Technology'),
            ),

            /// sport action sheet
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  CupertinoNavigationRoutes.category.name,
                  arguments: 'Sport',
                );
              },
              child: const Text('Sport'),
            ),
          ],

          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Feeds screen')),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Feeds screen'),
            CupertinoButton.filled(
              child: Text('Select Category'),
              onPressed: () {
                _openDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
