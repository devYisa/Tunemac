import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';
import 'package:tunemac/main.dart';

class BackgroundScreen extends ConsumerWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeWatch = ref.watch(backgroundController);
    final homeRead = ref.read(backgroundController.notifier);

    return Scaffold(
      body: Container(
        height: context.height * 1,
        width: context.width * 1,
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
        child: Stack(
          children: [
            SizedBox(child: bottomNavScreens[homeWatch.screenIndex]),

            Positioned(
              left: 0,
              right: 0,
              bottom: 30,
              child: Center(
                child: Container(
                  width: context.width * 0.8,
                  height: 63,
                  decoration: BoxDecoration(
                    color: tGreen1,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      bottomNavIcons.length,
                      (index) => InkWell(
                        onTap: () {
                          homeRead.changeScreenIndex(index);
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 250),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == homeWatch.screenIndex
                                ? tGreen3
                                : const Color.fromARGB(82, 113, 145, 0),
                          ),
                          child: Icon(
                            bottomNavIcons[index],
                            size: 20,
                            color: index == homeWatch.screenIndex
                                ? Colors.black
                                : const Color.fromARGB(165, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
