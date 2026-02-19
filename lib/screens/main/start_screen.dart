import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tunemac/constants.dart';
import 'package:tunemac/main.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final xController = Get.put(AllControllers());

    return LayoutBuilder(
      builder: (context, constraints) {
        final min = constraints.maxWidth;

        List content = List.generate(4, (index) {
          List icons = [
            EvaIcons.homeOutline,
            EvaIcons.search,
            Icons.favorite_outline,
            EvaIcons.personOutline,
          ];
          return InkWell(
            onTap: () {
              xController.currentIndex.value = index;
            },
            child: Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: min < 360 ? 50.sp : 50.h,
                width: min < 360 ? 50.sp : 70.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == xController.currentIndex.value
                      ? tGreen3
                      : const Color.fromARGB(82, 113, 145, 0),
                ),
                child: Icon(
                  icons[index],
                  size: min < 360 ? 20.sp : 20.h,
                  color: index == xController.currentIndex.value
                      ? Colors.black
                      : const Color.fromARGB(165, 255, 255, 255),
                ),
              ),
            ),
          );
        });

        return Scaffold(
          appBar: AppBar(toolbarHeight: 0),
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(248, 64, 66, 2),
                  const Color.fromARGB(255, 28, 37, 16),
                ],
                center: AlignmentGeometry.topCenter,
                radius: 0.9,
              ),
            ),
            child: min < 360
                ? Obx(
                    () => Stack(
                      children: [
                        SizedBox(
                          height: 1.sh,
                          child: xController
                              .screens[xController.currentIndex.value],
                        ),

                        Positioned(
                          height: 55,
                          left: 55.sp,
                          right: 55.sp,
                          bottom: 30.h,
                          child: Container(
                            decoration: BoxDecoration(
                              color: tGreen1,
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [...content],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Stack(
                    children: [
                      Positioned(
                        left: 10.sp,
                        top: 190,
                        bottom: 190,
                        child: Container(
                          decoration: BoxDecoration(
                            color: tGreen1,
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [...content],
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
