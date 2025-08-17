import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSettingsPage extends StatelessWidget {
  const CupertinoSettingsPage({super.key});

  void _openDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Are you sure to log out?'),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('Yes'),
            ),
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Settings screen')),
      child: Center(
        child: CupertinoButton.filled(
          onPressed: () {
            _openDialog(context);
          },
          child: Text('Log Out'),
        ),
      ),
    );
  }
}
