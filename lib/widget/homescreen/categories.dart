import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';
import 'package:tunemac/main.dart';

class Categories extends ConsumerWidget {
  final List list;
  final int rowNumber;
  const Categories({super.key, required this.list, required this.rowNumber});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeWatch = ref.watch(backgroundController);
    final homeRead = ref.read(backgroundController.notifier);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          rowNumber,
          (index) => InkWell(
            onTap: () => homeRead.changeCategoryIndex(index),
            child: AnimatedContainer(
              duration: Durations.short3,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 11),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: homeWatch.categoryIndex == index
                    ? tGreen3
                    : const Color.fromARGB(122, 90, 95, 90),
              ),
              child: Center(
                child: Text(
                  list[index],
                  style: TextStyle(
                    fontSize: 11,
                    color: homeWatch.categoryIndex == index
                        ? Colors.black
                        : tWhite1,
                    fontWeight: homeWatch.categoryIndex == index
                        ? FontWeight.w500
                        : FontWeight.w400,
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
