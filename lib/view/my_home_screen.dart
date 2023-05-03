import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexo_project/config/routes/routes_name.dart';
import 'package:nexo_project/common/widgets/app_bar.dart';
import 'package:nexo_project/controller/user_controller.dart';
import '../model/fake_data_model.dart';

/// Main Page
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    /// Use application themes
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      /// app bar
      appBar: appBar(textTheme),
      /// List of users
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView.builder(
          // The number of list members
          itemCount: userController.memberShipsList.length,
          itemBuilder: (context, index) {
            // When we click on any item
            return viewUserAccount(index);
          },
        ),
      ),
    );
  }

  Widget viewUserAccount(int index) {
    // Clickable
    return GestureDetector(
      onTap: () {
        /// Go to the edit page and send user information
        Get.toNamed(RoutesName.editContactScreen,
            arguments: userController.memberShipsList[index]);
        userController.phoneNumberController.text =
            userController.memberShipsList[index].date!;
        userController.ageController.text =
            userController.memberShipsList[index].age!.toString();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        /// User information
        child: items(index),
      ),
    );
  }

  Widget items(int index) {
    return Row(
      children: [
        // Profile picture
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/Ellipse 2.png"),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // name
            Text(userController.memberShipsList[index].name!),
            const SizedBox(
              height: 10,
            ),
            // phone number
            Text(
              phoneNumber[index],
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }

  NexoAppBar appBar(TextTheme textTheme) {
    return NexoAppBar(
        //change theme
        textButton: TextButton(
            onPressed: () {
              userController.toggleTheme();
            },
            // If it is true or false, the condition of the text will be changed
            child: Text(Get.isDarkMode ? "Light" : "Dark",
                style: textTheme.titleMedium)),
        backButton: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ));
  }
}
