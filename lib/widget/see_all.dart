import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'See all',
            style: TextStyle(color: Colors.grey, fontSize: 15.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.sp, right: 20.sp, top: 2),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
