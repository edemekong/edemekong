import 'package:edemekong/constants/app_routes.dart';
import 'package:edemekong/ui/components/buttons/hover_button.dart';
import 'package:edemekong/ui/components/buttons/linked_text.dart';
import 'package:edemekong/ui/theme/colors.dart';
import 'package:edemekong/ui/theme/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EdAppBar extends ConsumerWidget {
  final StatefulNavigationShell shell;
  const EdAppBar({super.key, required this.shell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final StatefulShellRoute route = shell.route;

    return ResponsiveBuilder(
      builder: (context, info) {
        return Container(
          constraints: const BoxConstraints(minHeight: kToolbarHeight),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Builder(builder: (context) {
            if (info.isMobile) {
              return const SizedBox();
            }
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                route.branches.length,
                (index) {
                  final path = route.branches[index];
                  final isHome = path.initialLocation == AppRoutes.home.path;
                  final isCurrentPage = index == shell.currentIndex;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacings.cardPadding),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: isHome ? AppSpacings.cardPadding : 0),
                      child: Builder(builder: (context) {
                        if (!isHome) {
                          return HoverButton(
                            title: getTitle(path.initialLocation),
                            onTap: () => shell.goBranch(
                              index,
                              initialLocation: isCurrentPage,
                            ),
                            state: isCurrentPage ? HoverButtonState.selected : HoverButtonState.initial,
                          );
                        }

                        return LinkedText(
                          link: getTitle(path.initialLocation),
                          onLinkTap: () => shell.goBranch(
                            index,
                            initialLocation: isCurrentPage,
                          ),
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                          textColor: AppColors.white,
                        );
                      }),
                    ),
                  );
                },
              ),
            );
          }),
        );
      },
    );
  }

  String getTitle(String? path) {
    return switch (AppRoutes.values.firstWhere((element) => path == element.path)) {
      AppRoutes.home => 'PAUL.flutterfairy',
      AppRoutes.hire => 'Hire me',
      AppRoutes.experience => 'Experience',
      AppRoutes.story => 'Story',
      AppRoutes.projects => 'Projects',
    };
  }
}
