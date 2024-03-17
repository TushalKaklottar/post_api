import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inno_tech/export.dart';

class ApiController extends GetxController {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  RxString result = ''.obs;

  Future<void> postData() async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'name': nameController.text,
          'email': emailController.text,
        }),
      );
      if (response.statusCode == 201) {
        final resData = jsonDecode(response.body);
        result.value =
            'ID: ${resData['id']}\nName: ${resData['name']}\nEmail: ${resData['email']}';
      } else {
        throw Exception('Failed to post data');
      }
    } catch (e) {
      result.value = "Error: $e";
    }
  }
}
