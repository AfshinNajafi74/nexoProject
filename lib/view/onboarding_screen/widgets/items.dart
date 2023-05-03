import 'package:flutter/material.dart';
import 'package:nexo_project/model/onboarding_item_model.dart';

/// This is a list of items for the introduction page

List<OnboardingItem> items = [
  OnboardingItem(
    image: Image.asset("assets/images/city.jpg",width: 200,),
    title: "City",
    content: """شهر هوشمند یک منطقه شهری است که از انواع مختلف روش ها و حسگرهای الکترونیکی برای جمع آوری داده ها استفاده می کند. بینش های بدست آمده از آن داده ها برای مدیریت کارآمد دارایی ها ، منابع و خدمات استفاده می شود. در عوض ، از این داده ها برای بهبود عملیات در سطح شهر استفاده می شود."""
  ),
  OnboardingItem(
    image: Image.asset("assets/images/room2.jpg",width: 200,),
    title: "Home",
    content: """اتوماسیون خانه اتوماسیون ساختمان برای یک خانه است که خانه هوشمند نامیده می شود. یک سیستم اتوماسیون خانگی ویژگی های خانه مانند روشنایی ، آب و هوا ، سیستمهای سرگرمی و لوازم خانگی را کنترل و کنترل می کند. همچنین ممکن است شامل امنیت خانه مانند کنترل دسترسی و سیستم های هشدار باشد."""

  ),
  OnboardingItem(
    image: Image.asset("assets/images/Mask_farm.png",),
    title: "Agriculture",
    content: """کشاورزی هوشمند یک مفهوم نوظهور است که به مدیریت مزارع با استفاده از فناوری هایی مانند اینترنت اشیا ، روباتیک ، هواپیماهای بدون سرنشین و هوش مصنوعی برای افزایش کمیت و کیفیت محصولات و بهینه سازی نیروی انسانی مورد نیاز تولید اشاره دارد."""
  ),
];