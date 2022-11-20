import 'package:flutter/material.dart';
import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/people/people_controller.dart';

class PeopleView extends StatelessWidget {
  const PeopleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PeopleController>(
      init: PeopleController(),
      builder: (controller) {
        return Column(
          children: [
            FutureBuilder<List<User>>(
              future: controller.futureUser,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return UserItem(
                          user: snapshot.data![index],
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const Expanded(
                    child: Center(child: CircularProgressIndicator()));
              },
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        );
      },
    );
  }
}
