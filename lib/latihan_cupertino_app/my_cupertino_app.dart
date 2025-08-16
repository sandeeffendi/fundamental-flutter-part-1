import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back),
        middle: Text('Cupertino navigation bar'),
        trailing: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: Icon(CupertinoIcons.person),
          ),
        ),
      ),

      child: Center(child: Text('cupertino app')),
    );
  }
}
