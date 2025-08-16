enum NavigationRoutes {
  homeRoute('/'),
  detailRoute('/detail'),
  bookmarkRoute('/bookmark');

  const NavigationRoutes(this.name);

  final String name;
}
