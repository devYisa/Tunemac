import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunemac/constants.dart';
import 'package:tunemac/widget/categories.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 320.sp,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      EvaIcons.search,
                      size: 15.sp,
                      color: tWhite1,
                    ),
                    hintText: 'Artists songs, albums or playlists',
                    hintStyle: TextStyle(color: tWhite1, fontSize: 12.5.sp),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.sp),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.sp),
          Categories(list: searchCategories, rowNumber: 3),
          SizedBox(height: 15.sp),
          SizedBox(
            height: MediaQuery.of(context).size.width * 1.25,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Wrap(
                spacing: 10.sp,
                runSpacing: 10.sp,
                children: List.generate(
                  searchGenres.length,
                  (index) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        height: 98.5.sp,
                        width: 100.sp,
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          searchImages[index],
                          fit: BoxFit.cover,
                          color: const Color.fromARGB(76, 0, 0, 0),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      SizedBox(
                        height: 100.sp,
                        width: 100.sp,
                        child: Center(
                          child: Text(
                            searchGenres[index],
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
