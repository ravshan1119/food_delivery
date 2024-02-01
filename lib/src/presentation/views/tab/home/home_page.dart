import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/banner.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/home_notification_item.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/popular_item.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/restaurant_item.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/search_text_field.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/view_more.dart';
import 'package:food_delivery/src/utils/resources/app_icons.dart';
import 'package:food_delivery/src/utils/resources/app_images.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';

import '../../../../utils/resources/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            AppImages.group,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.2),
          ),
        ),
        ListView(
          children: [
            10.ph,
            HomeNotificationItem(onTap: () {}),
            18.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                children: [
                  const Flexible(
                    child: SearchTextField(
                        hintText: "What do you want to order?",
                        icon: AppIcons.search),
                  ),
                  9.pw,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.c_FBF4EB,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.w),
                      child: SvgPicture.asset(AppIcons.filter),
                    ),
                  )
                ],
              ),
            ),
            24.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const BannerItem(),
            ),
            24.ph,
            ViewMoreItem(
              labelName: "Nearest Restaurant",
              onTap: () {},
            ),
            10.ph,
            ...List.generate(
              2,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RestaurantItem(
                        image: AppImages.restaurantOne,
                        restaurantName: "Vegan Resto",
                        time: "12 Mins"),
                    RestaurantItem(
                        image: AppImages.restaurantTwo,
                        restaurantName: "Healthy Food",
                        time: "8 Mins"),
                  ],
                ),
              ),
            ),
            24.ph,
            ViewMoreItem(
              labelName: "Popular Menu",
              onTap: () {},
            ),
            10.ph,
            ...List.generate(
              2,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                child: const PopularItem(
                    price: "15", foodName: "Vegan Resto", time: "12 Mins"),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
