import 'package:inno_tech/export.dart';
import 'package:inno_tech/helper/api_helper.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ApiController _apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Home"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              controller: _apiController.nameController,
              placeholder: 'Name',
              decoration: BoxDecoration(
                  color: CupertinoColors.systemYellow.darkElevatedColor,
                  border:
                      Border.all(width: 2, color: CupertinoColors.activeBlue),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              controller: _apiController.emailController,
              placeholder: 'Email',
              decoration: BoxDecoration(
                  color: CupertinoColors.systemYellow.darkElevatedColor,
                  border:
                      Border.all(width: 2, color: CupertinoColors.activeBlue),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton.filled(
              onPressed: () {
                _apiController.postData();
                _apiController.nameController.clear();
                _apiController.emailController.clear();
                print("Name: ${_apiController.nameController.text}");
                print("Email: ${_apiController.emailController.text}");
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  _apiController.result.value,
                  style: const TextStyle(fontSize: 16),
                )),
            SizedBox(
              height: 20,
            ),
            CupertinoButton.filled(
              onPressed: () {
                Get.to(DataBase());
              },
              child: const Text("Data-Base"),
            ),
          ],
        ),
      ),
    );
  }
}
