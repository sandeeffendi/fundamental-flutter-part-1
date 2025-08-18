import 'package:design_ui_dengan_widget/latihan_inherited_widget/inherited/counter_data.dart';
import 'package:design_ui_dengan_widget/latihan_inherited_widget/widgets/app_bar_widget.dart';
import 'package:design_ui_dengan_widget/latihan_inherited_widget/widgets/body_widget.dart';
import 'package:flutter/material.dart';

class InheritedWidgetHomepage extends StatefulWidget {
  const InheritedWidgetHomepage({super.key});

  @override
  State<InheritedWidgetHomepage> createState() =>
      _InheritedWidgetHomepageState();
}

class _InheritedWidgetHomepageState extends State<InheritedWidgetHomepage> {
  int _counter = 0;

  // Set State
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterData(
      counter: _counter,
      child: Scaffold(
        appBar: AppBar(title: const AppBarWidget()),
        body: BodyWidget(),
      ),
    );
  }
}
