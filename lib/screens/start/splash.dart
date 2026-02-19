import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tunemac/constants.dart';
import 'package:tunemac/screens/main/start_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () => Get.to(StartScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              const Color.fromARGB(248, 64, 66, 2),
              const Color.fromARGB(255, 28, 37, 16),
            ],
            center: AlignmentGeometry.topCenter,
            radius: 1.15,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                    'Tune',
                    style: TextStyle(
                      fontSize: 50.sp,
                      color: tGreen3,
                      height: 1,
                    ),
                  )
                  .animate()
                  .slideY(
                    begin: -2,
                    curve: Curves.easeInOutQuart,
                    duration: Duration(seconds: 2),
                  )
                  .fadeIn(duration: 1000.ms),
              SizedBox(
                width: 115.sp,
                child:
                    Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Mac',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Container(
                              height: 15.sp,
                              width: 15.sp,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                'TM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                        .animate()
                        .slideY(
                          begin: 1,
                          curve: Curves.easeIn,
                          duration: Duration(seconds: 2),
                        )
                        .fadeIn(duration: 1500.ms),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
