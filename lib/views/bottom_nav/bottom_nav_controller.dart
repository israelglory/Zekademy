import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/people/people_view.dart';

class BottomNavController extends GetxController {
  int selectedIndex = 0;

  void inItstate() {}

  final List children = const [
    HomeView(),
    PeopleView(),
    CreateView(),
    ActivitiesView(),
    ProfileView(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
