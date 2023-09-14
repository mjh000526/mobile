import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/controller/dropdown_controller.dart';

//앱바 오른쪽 드롭다운으로 만들었지만 나중에 지도api호출해서 값 반영해야할 듯
class CategoryDropdown extends GetView<DropdownController> {
  final List<String> categories;

  CategoryDropdown({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10),
        child: Obx(() {
          return DropdownButton(
            value: controller.categoryItem.value,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            underline: SizedBox.shrink(),
            items: categories
                .map((category) => DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    ))
                .toList(),
            onChanged: (value) {
              controller.setCategoryItem(value!);
            },
          );
        }));
  }
}
