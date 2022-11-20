import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/activities/activities_controller.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ActivitiesController>(
      init: ActivitiesController(),
      builder: (controller) {
        return const Center(
          child: Text(
            'Activities',
          ),
        );
      },
    );
  }
}
