import 'package:edemekong/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../ui/screens/screens.dart';

final navigationProvider = Provider(
  (ref) => NavigationService(ref),
);

class NavigationService {
  final Ref ref;
  late GlobalObjectKey<NavigatorState> mainNavigatorKey;

  NavigationService(this.ref) {
    mainNavigatorKey = const GlobalObjectKey<NavigatorState>(ValueKey("main-navigator"));
  }

  GoRouter get router => GoRouter(
        navigatorKey: mainNavigatorKey,
        initialLocation: AppRoutes.home.path,
        routes: [
          StatefulShellRoute.indexedStack(
            pageBuilder: (context, state, shell) {
              return NoTransitionPage(
                child: WebTab(shell: shell),
              );
            },
            branches: [
              StatefulShellBranch(
                initialLocation: AppRoutes.projects.path,
                routes: [
                  GoRoute(
                    name: AppRoutes.projects.name,
                    path: AppRoutes.projects.path,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: ProjectsView(),
                      );
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                initialLocation: AppRoutes.contents.path,
                routes: [
                  GoRoute(
                    name: AppRoutes.contents.name,
                    path: AppRoutes.contents.path,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: ContentsView(),
                      );
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                initialLocation: AppRoutes.home.path,
                routes: [
                  GoRoute(
                    name: AppRoutes.home.name,
                    path: AppRoutes.home.path,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: HomeView(),
                      );
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                initialLocation: AppRoutes.experience.path,
                routes: [
                  GoRoute(
                    name: AppRoutes.experience.name,
                    path: AppRoutes.experience.path,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: ExperienceView(),
                      );
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                initialLocation: AppRoutes.story.path,
                routes: [
                  GoRoute(
                    name: AppRoutes.story.name,
                    path: AppRoutes.story.path,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: StoryView(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
