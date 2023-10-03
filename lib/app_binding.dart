import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/controller/add_product_controller.dart';
import 'package:mobile/controller/bottom_bar_controller.dart';
import 'package:mobile/controller/date_picker_controller.dart';
import 'package:mobile/controller/dropdown_controller.dart';
import 'package:mobile/controller/homeController.dart';
import 'package:mobile/controller/infinite_scroll_conterller.dart';
import 'package:mobile/controller/search_textfield_controller.dart';
import 'package:mobile/controller/sell_product_controller.dart';
import 'package:mobile/controller/tabbar_controller.dart';
import 'package:mobile/model/product_search_model.dart';

class AppBinding extends Bindings{

  @override
  void dependencies(){
    final infinitescrollController = InfiniteScrollController(searchData: ProductSearchModel(
      keyword: "", category: "",
      nick_name: "", closed: false,
      search_time: true, like: true,
      search_price: true));
    final homeController = HomeController();
    final tabbarController = TabbarController();
    final sellProductController = SellProductController();
    final searchTextfieldController = SearchTextfieldController();
    final dropdownController = DropdownController();
    final bottomBarController = BottomBarController();
    final datePickerController = DatePickerController();
    final addProductController = AddProductController();


    Get.put(addProductController);
    Get.put(datePickerController);
    Get.put(infinitescrollController);
    Get.put(homeController);
    Get.put(tabbarController);
    Get.put(sellProductController);
    Get.put(searchTextfieldController);
    Get.put(dropdownController);
    Get.put(bottomBarController);
  }
}
