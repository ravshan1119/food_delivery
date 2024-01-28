import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/resources/app_colors.dart';

class HomeNotificationItem extends StatelessWidget {
  const HomeNotificationItem({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Find Your \nFavorite Food",
            style: TextStyle(
                fontFamily: "Inter",
                fontSize: 31,
                fontWeight: FontWeight.w700,
                color: AppColors.textColor),
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 45.w,
              width: 45.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.1),
                        offset: const Offset(0, 10))
                  ]),
              child: const Icon(
                Icons.notifications,
                color: AppColors.c_53e88b,
              ),
            ),
          )
        ],
      ),
    );
  }
}
