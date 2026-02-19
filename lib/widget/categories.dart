import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tunemac/constants.dart';
import 'package:tunemac/main.dart';

class Categories extends StatelessWidget {
  final List list;
  final int rowNumber;
  const Categories({super.key, required this.list, required this.rowNumber});

  @override
  Widget build(BuildContext context) {
    final xcontroller = Get.put(AllControllers());

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          rowNumber,
          (index) => InkWell(
            onTap: () => xcontroller.catIndex.value = index,
            child: Obx(
              () => AnimatedContainer(
                duration: Durations.short3,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.sp,
                  vertical: 11.sp,
                ),
                margin: EdgeInsets.all(5.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: xcontroller.catIndex.value == index
                      ? tGreen3
                      : const Color.fromARGB(122, 90, 95, 90),
                ),
                child: Center(
                  child: Text(
                    list[index],
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: xcontroller.catIndex.value == index
                          ? Colors.black
                          : tWhite1,
                      fontWeight: xcontroller.catIndex.value == index
                          ? FontWeight.w500
                          : FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
