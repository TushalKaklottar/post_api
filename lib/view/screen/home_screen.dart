import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_tech/helper/api_helper.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ApiController apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              controller: apiController.nameController,
              placeholder: 'name',
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.inactiveGray),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            const SizedBox(height: 10.0),
            CupertinoTextField(
              controller: apiController.emailController,
              placeholder: 'Email',
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.inactiveGray),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            const SizedBox(height: 10.0),
            CupertinoButton.filled(
              onPressed: apiController.postData,
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20.0),
            Obx(
              () => Text(
                apiController.result.value,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
