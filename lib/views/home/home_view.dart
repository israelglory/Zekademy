import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/home/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return const Center(
          child: Text(
            'Home',
          ),
        );
      },
    );
  }
}
