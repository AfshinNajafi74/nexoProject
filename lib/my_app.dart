import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexo_project/config/routes/routes_name.dart';
import 'package:nexo_project/config/routes/screens.dart';
import 'package:nexo_project/config/theme/app_themes.dart';
import 'package:nexo_project/controller/user_controller.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Screens.screens,
      initialRoute: RoutesName.splashScreen,
      themeMode: ThemeMode.light,
      theme: userController.theme,
      darkTheme: AppThemes.darkTheme,
    );
  }
}
