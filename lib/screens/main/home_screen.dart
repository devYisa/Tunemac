import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';
import 'package:tunemac/widget/homescreen/categories.dart';
import 'package:tunemac/widget/homescreen/see_all.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 19,
        color: tWhite2,
        fontWeight: FontWeight.w500,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bom Dia!',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            'Gila DaCosta',
                            style: TextStyle(
                              color: tWhite3,
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(82, 158, 158, 158),
                    ),
                    child: Icon(EvaIcons.bellOutline, color: tWhite1, size: 23),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Text('Select Categories'),
              SizedBox(height: 10),
              Categories(list: homeCategories, rowNumber: 6),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Popular Songs'), SeeAll()],
              ),

              SizedBox(height: 13),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20,
                  children: List.generate(
                    ArtistesInfo.names.length,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 170,
                          width: 130,
                          child: Image.asset(
                            ArtistesInfo.artLinks[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 12,
                              width: 0,
                              child: VerticalDivider(color: Colors.grey),
                            ),
                            Text(
                              '  Jazz Concert',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          ArtistesInfo.names[index],
                          style: TextStyle(fontSize: 7, color: tGreen3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('New Collections'), SeeAll()],
              ),
              SizedBox(height: 15),
              CarouselSlider(
                items: List.generate(
                  ArtistesInfo.names2.length,
                  (index) => Stack(
                    children: [
                      Container(
                        width: 300,
                        height: 160,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          ArtistesInfo.artLinks2[index],
                          color: const Color.fromARGB(73, 0, 0, 0),
                          colorBlendMode: BlendMode.darken,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        height: 160,
                        left: 10,
                        child: Column(
                          spacing: 5,
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
                              style: TextStyle(fontSize: 10, color: tWhite1),
                            ),
                            Icon(
                              EvaIcons.arrowForward,
                              color: tGreen3,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                options: CarouselOptions(
                  height: 160,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollPhysics: BouncingScrollPhysics(),
                ),
              ),
              SizedBox(height: 20),
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
