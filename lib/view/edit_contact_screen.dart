import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexo_project/common/widgets/app_bar.dart';
import 'package:nexo_project/controller/user_controller.dart';
import 'package:nexo_project/model/user_model.dart';

/// Edit user page and view user information
class EditContactScreen extends StatelessWidget {
  EditContactScreen({Key? key}) : super(key: key);

  /// get user's information from HomeScreen (when click on a item)
  late final UserModel user = Get.arguments;
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      /// app bar
      appBar: appBar(textTheme),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          // Profile picture
          profile(),
          const SizedBox(height: 24),
          // name
          Text(user.name!,style: textTheme.titleLarge),
          const SizedBox(height: 12),
          // username
          Text("@neda_ni", style: textTheme.titleSmall),
          const SizedBox(height: 24),
          /// Information repository
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: contentInfo(textTheme),
            ),
          ),
        ],
      ),
    );
  }

  Widget profile() {
    return Image(
      image: const AssetImage("assets/images/Ellipse 2.png"),
      width: Get.width / 4.1,
      height: Get.height / 7.4,
      fit: BoxFit.fill,
    );
  }

  Widget contentInfo(TextTheme textTheme) {
    return Container(
      height: Get.height,
      decoration: decorateTheBoxUserInfo(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 10),
        // scrollable
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          /// TextFields
          child: column(textTheme),
        ),
      ),
    );
  }

  Widget column(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Contact info", style: textTheme.titleMedium),
        const SizedBox(height: 17),
        Text("Phone number", style: textTheme.titleSmall),
        const SizedBox(height: 5),
        // input phone number
        TextField(controller: userController.phoneNumberController),
        const SizedBox(height: 17),
        Text("Age", style: textTheme.titleSmall),
        const SizedBox(height: 5),
        // age input
        TextField(controller: userController.ageController)
      ],
    );
  }

  BoxDecoration decorateTheBoxUserInfo() {
    return const BoxDecoration(
        color: Color(0xffE3E5E8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ));
  }

  NexoAppBar appBar(TextTheme textTheme) {
    return NexoAppBar(
      backButton: IconButton(
        onPressed: () {
          // Back to the previous page
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
      ),
      textButton: TextButton(
        onPressed: () {
          /// save
        },
        child: Text("save",style: textTheme.titleMedium),
      ),
    );
  }
}
