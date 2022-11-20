import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zekademy/exports/exports.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset('assets/images/logo.svg'),
              ],
            ),
            leadingWidth: 70,
            actions: const [
              Icon(CupertinoIcons.bell),
              SizedBox(
                width: 25.0,
              ),
              Icon(CupertinoIcons.search),
              SizedBox(
                width: 17.0,
              ),
            ],
          ),
          body: controller.children[controller.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            iconSize: 20.0,
            selectedFontSize: 14.0,
            unselectedFontSize: 14.0,
            enableFeedback: true,
            unselectedItemColor: AppColors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person_3_fill,
                ),
                label: 'People',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.plus_square,
                ),
                label: 'Create',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble,
                ),
                label: 'Activities',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: controller.selectedIndex,
            selectedItemColor: AppColors.primaryColor,
            onTap: controller.onItemTapped,
          ),
        );
      },
    );
  }
}
