import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunemac/constants.dart';
import 'package:tunemac/widget/categories.dart';
import 'package:tunemac/widget/see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 19.sp,
        color: tWhite2,
        fontWeight: FontWeight.w500,
      ),
      child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.sp,
                        width: 50.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.green,
                          size: 40.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bom Dia!',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp,
                            ),
                          ),
                          Text(
                            'Gila DaCosta',
                            style: TextStyle(
                              color: tWhite3,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40.sp,
                    width: 40.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(82, 158, 158, 158),
                    ),
                    child: Icon(
                      EvaIcons.bellOutline,
                      color: tWhite1,
                      size: 23.sp,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15.sp),
              Text('Select Categories'),
              SizedBox(height: 10.sp),
              Categories(list: homeCategories, rowNumber: 6),
              SizedBox(height: 15.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Popular Songs'), SeeAll()],
              ),

              SizedBox(height: 13.sp),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20.sp,
                  children: List.generate(
                    ArtistesInfo.names.length,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 170.sp,
                          width: 130.sp,
                          child: Image.asset(
                            ArtistesInfo.artLinks[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 12.sp,
                              width: 0,
                              child: VerticalDivider(color: Colors.grey),
                            ),
                            Text(
                              '  Jazz Concert',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Text(
                          ArtistesInfo.names[index],
                          style: TextStyle(fontSize: 7.sp, color: tGreen3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('New Collections'), SeeAll()],
              ),
              SizedBox(height: 15.sp),
              CarouselSlider(
                items: List.generate(
                  ArtistesInfo.names2.length,
                  (index) => Stack(
                    children: [
                      Container(
                        width: 300.sp,
                        height: 160.sp,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          ArtistesInfo.artLinks2[index],
                          color: const Color.fromARGB(73, 0, 0, 0),
                          colorBlendMode: BlendMode.darken,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        height: 160.sp,
                        left: 10.sp,
                        child: Column(
                          spacing: 5.sp,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Top Portuguese\nGlobal Songs',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Discover 86 songs',
                              style: TextStyle(fontSize: 10.sp, color: tWhite1),
                            ),
                            Icon(
                              EvaIcons.arrowForward,
                              color: tGreen3,
                              size: 25.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                options: CarouselOptions(
                  height: 160.sp,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollPhysics: BouncingScrollPhysics(),
                ),
              ),
              SizedBox(height: 20.sp),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Trending Playlists'), SeeAll()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
