import 'package:zekademy/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<User>> fetchUser() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/users'),
  );

  if (response.statusCode == 200) {
    var parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    final List<User> result = parsed
        .map<User>(
          (json) => User.fromMap(json),
        )
        .toList();
    return result;
  } else {
    throw Exception('Failed to load Product');
  }
}
