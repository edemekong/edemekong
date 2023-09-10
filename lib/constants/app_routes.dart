enum AppRoutes { home, experience, story, projects, hire }

extension AppRouteExtension on AppRoutes {
  String get path {
    return switch (this) {
      AppRoutes.home => '/home',
      AppRoutes.hire => '/hire-me',
      AppRoutes.experience => '/experience',
      AppRoutes.story => '/story',
      AppRoutes.projects => '/projects',
    };
  }
}
