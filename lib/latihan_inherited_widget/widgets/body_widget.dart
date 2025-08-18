import 'package:flutter/material.dart';
import 'package:design_ui_dengan_widget/latihan_inherited_widget/inherited/counter_data.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counter =
        CounterData.of(context)?.counter ?? 'Failed to fetch Counter Data';

    return Text(counter.toString());
  }
}
