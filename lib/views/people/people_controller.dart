import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/services/user_services.dart';

class PeopleController extends GetxController {
  late Future<List<User>> futureUser;
  @override
  void onInit() {
    super.onInit();
    futureUser = fetchUser();
    //print(fetchUser());
  }
}
