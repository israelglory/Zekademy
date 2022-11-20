import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/create/create_controller.dart';

class CreateView extends StatelessWidget {
  const CreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateController>(
      init: CreateController(),
      builder: (controller) {
        return const Center(
          child: Text(
            'Create',
          ),
        );
      },
    );
  }
}
