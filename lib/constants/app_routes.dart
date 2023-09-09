enum AppRoutes { home, experience, story, projects, contents }

extension AppRouteExtension on AppRoutes {
  String get path {
    return switch (this) {
      AppRoutes.home => '/home',
      AppRoutes.contents => '/contents',
      AppRoutes.experience => '/experience',
      AppRoutes.story => '/story',
      AppRoutes.projects => '/projects',
    };
  }
}
