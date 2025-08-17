import 'package:design_ui_dengan_widget/latihan_grouping_list_sliver_widget/model/dicoding_course.dart';
import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  final DicodingCourse dicodingCourse;

  const ListTileItem({super.key, required this.dicodingCourse});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(dicodingCourse.title),
      subtitle: Text(dicodingCourse.description, maxLines: 5),
      isThreeLine: true,
      onTap: () {},
    );
  }
}
