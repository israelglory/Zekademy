import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/profile/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return const Center(child: Text('Profile'));
      },
    );
  }
}
