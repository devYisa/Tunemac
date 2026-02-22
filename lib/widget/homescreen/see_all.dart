import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text('See all', style: TextStyle(color: Colors.grey, fontSize: 15)),
          Padding(
            padding: EdgeInsets.only(left: 7, right: 20, top: 2),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}
