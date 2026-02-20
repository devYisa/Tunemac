import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';
import 'package:tunemac/widget/homescreen/categories.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(EvaIcons.search, size: 15, color: tWhite1),
                    hintText: 'Artists songs, albums or playlists',
                    hintStyle: TextStyle(color: tWhite1, fontSize: 12.5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Categories(list: searchCategories, rowNumber: 3),
          SizedBox(height: 15),
          SizedBox(
            height: MediaQuery.of(context).size.width * 1.25,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  searchGenres.length,
                  (index) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 98.5,
                        width: 100,
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          searchImages[index],
                          fit: BoxFit.cover,
                          color: const Color.fromARGB(76, 0, 0, 0),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text(
                            searchGenres[index],
                            style: TextStyle(
                              fontSize: 12,
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
