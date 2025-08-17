import 'package:design_ui_dengan_widget/latihan_grouping_list_sliver_widget/model/dicoding_course.dart';
import 'package:design_ui_dengan_widget/latihan_grouping_list_sliver_widget/utils/sliver_header_delegate.dart';
import 'package:design_ui_dengan_widget/latihan_grouping_list_sliver_widget/widget/list_tile_item.dart';
import 'package:flutter/material.dart';

class LearningPathScreen extends StatelessWidget {
  const LearningPathScreen({super.key});

  /// Header Sliver
  SliverPersistentHeader _header(BuildContext context, String title) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: sliverHeaderDelegate(
        minHeight: 60,
        maxHeight: 150,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: Center(
            child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          /// Learning Parh App Bar
          const SliverAppBar.medium(title: Text('Dicoding Learning Path')),

          /// Learning Path Multi-Platform app developer
          _header(context, 'Multi-Platform App Developer'),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  ListTileItem(dicodingCourse: multiplatformPath[index]),
              childCount: multiplatformPath.length,
            ),
          ),

          /// Learning Path IOs Developer
          _header(context, 'IOs Developer'),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTileItem(dicodingCourse: iosPath[index]),
              childCount: iosPath.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),

          /// Learning Path Android Developer
          _header(context, 'Android Developer'),
          SliverList.builder(
            itemBuilder: (context, index) =>
                ListTileItem(dicodingCourse: androidPath[index]),
            itemCount: androidPath.length,
          ),

          /// Learning Path Web Developer
          _header(context, 'Front-End Web developer'),
          SliverGrid.count(
            crossAxisCount: 2,
            children: webPath
                .map((webClass) => ListTileItem(dicodingCourse: webClass))
                .toList(),
          ),
        ],
      ),
    );
  }
}
