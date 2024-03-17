// import 'dart:convert';
// import '../model/api_model.dart';
// import 'package:http/http.dart' as http;
//
// class ApiProvider {
//   ApiProvider._();
//   static final ApiProvider _singleton = ApiProvider._();
//   static const String _baseUrl = "https://fakestoreapi.com";
//
//   factory ApiProvider() {
//     return _singleton;
//   }
//
//   Future<List<Product>> fetchProducts() async {
//     final response = await http.get(Uri.parse('$_baseUrl/products'));
//     if (response.statusCode == 200) {
//       List<dynamic> data = json.decode(response.body);
//       List<Product> products =
//           data.map((json) => Product.fromJson(json)).toList();
//       return products;
//     } else {
//       throw Exception("failed to load products...");
//     }
//   }
//
//   Future<Product> fetchProductDetails(int id) async {
//     final response = await http.get(Uri.parse("$_baseUrl/products/$id"));
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = json.decode(response.body);
//       Product product = Product.fromJson(data);
//       return product;
//     } else {
//       throw Exception("failed to load product detail");
//     }
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiController extends GetxController {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  RxString result = ''.obs; // To store the result from the API call

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    super.onClose();
  }

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
        // Successful POST request, handle the response here
        final responseData = jsonDecode(response.body);
        result.value =
            'ID: ${responseData['id']}\nName: ${responseData['name']}\nEmail: ${responseData['email']}';
      } else {
        // If the server returns an error response, throw an exception
        throw Exception('Failed to post data');
      }
    } catch (e) {
      result.value = 'Error: $e';
    }
  }
}
//
// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//
// class ApiController extends GetxController {
//   final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   RxString result = ''.obs; // To store the result from the API call
//
//   Dio dio = Dio(); // Create an instance of Dio for making HTTP requests
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onClose() {
//     nameController.dispose();
//     emailController.dispose();
//     super.onClose();
//   }
//
//   Future<void> postData() async {
//     try {
//       Response response = await dio.post(
//         apiUrl,
//         data: jsonEncode(<String, dynamic>{
//           'name': nameController.text,
//           'email': emailController.text,
//         }),
//         options: Options(
//           headers: {
//             'Content-Type': 'application/json; charset=UTF-8',
//           },
//         ),
//       );
//
//       if (response.statusCode == 201) {
//         // Successful POST request, handle the response here
//         final responseData = jsonDecode(response.data);
//         result.value =
//             'ID: ${responseData['id']}\nName: ${responseData['name']}\nEmail: ${responseData['email']}';
//       } else {
//         // If the server returns an error response, throw an exception
//         throw Exception('Failed to post data');
//       }
//     } catch (e) {
//       result.value = 'Error: $e';
//     }
//   }
// }
