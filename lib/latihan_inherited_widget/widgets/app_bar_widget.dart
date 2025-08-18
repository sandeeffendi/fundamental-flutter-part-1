import 'package:design_ui_dengan_widget/latihan_inherited_widget/inherited/counter_data.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counter =
        CounterData.of(context)?.counter ?? 'Failed to fetch Counter Data';

    return Text(counter.toString());
  }
}
