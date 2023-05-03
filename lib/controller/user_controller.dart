import 'package:get/get.dart';
import 'package:nexo_project/config/theme/app_themes.dart';
import 'package:nexo_project/model/user_model.dart';
import 'package:nexo_project/services/api_provider.dart';
import 'package:flutter/material.dart';

class UserController extends GetxController{
  RxList<UserModel> memberShipsList = RxList();
  // TestField's controller for phone number
  TextEditingController phoneNumberController = TextEditingController();
  // TestField's controller for age
  TextEditingController ageController = TextEditingController();
  ThemeData? theme;

  @override
  void onInit(){
    super.onInit();
    // when that UserController build, calls fetchData
    fetchData();
  }

  // This method gets data
  Future fetchData() async{
    var response = await ApiProvider().getMethod();
    if(response.statusCode == 200){
      // Get list from API and add to memberShipsList
      response.data['Users'].forEach((element){
        memberShipsList.add(UserModel.fromJson(element));
      });
    }
  }

  // This method changes Theme
  toggleTheme(){
    Get.changeTheme(
        Get.isDarkMode ? AppThemes.lightTheme : AppThemes.darkTheme
    );
  }
}