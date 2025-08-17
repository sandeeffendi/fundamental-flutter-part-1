import 'package:flutter/foundation.dart';

enum CupertinoNavigationRoutes {
  homeRoute('/'),
  sport('/sport'),
  business('/business'),
  technology('/technology'),
  category('/category');

  const CupertinoNavigationRoutes(this.name);

  final String name;
}
