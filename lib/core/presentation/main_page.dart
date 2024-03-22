import 'package:auto_route/auto_route.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'routes/app_router.gr.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // static List<TabItem<SvgPicture>> items = ;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      bottomNavigationBuilder: (context, tabsRouter) {
        return Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: BottomBarInspiredFancy(
            items: const [
              TabItem(
                icon: Icons.home,
                title: 'Home',
              ),
              TabItem(
                icon: Icons.favorite,
                title: 'Favourites',
              ),
              TabItem(
                icon: Icons.notifications,
                title: 'Notifications',
              ),
              TabItem(
                icon: Icons.person,
                title: 'Profile',
              ),
            ],
            backgroundColor: Colors.white,
            color: const Color(0xff94A3B8),
            colorSelected: Theme.of(context).colorScheme.primary,
            indexSelected: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            styleIconFooter: StyleIconFooter.dot,
          ),

          // child: BottomNavigationBar(
          //   backgroundColor: Theme.of(context).colorScheme.onPrimary,
          //   elevation: 10,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: BottomNavigationBarIcon(
          //         iconActivePath: Assets.icons.svg.home.path,
          //         isActive: tabsRouter.activeIndex == 0,
          //       ),
          //       label: "Home",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: BottomNavigationBarIcon(
          //         isActive: tabsRouter.activeIndex == 1,
          //         iconActivePath: Assets.icons.svg.favorite.path,
          //       ),
          //       label: "Favorites",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: BottomNavigationBarIcon(
          //         isActive: tabsRouter.activeIndex == 2,
          //         iconActivePath: Assets.icons.svg.notification.path,
          //       ),
          //       label: "Notifications",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: BottomNavigationBarIcon(
          //         isActive: tabsRouter.activeIndex == 3,
          //         iconActivePath: Assets.icons.svg.profile.path,
          //       ),
          //       label: "Profile",
          //     ),
          //   ],
          //   currentIndex: tabsRouter.activeIndex,
          //   onTap: tabsRouter.setActiveIndex,
        );
      },
      routes: const [
        HomeRoute(),
        FavoritesRoute(),
        NotificationsRoute(),
        ProfileRoute(),
      ],
    );
  }
}
