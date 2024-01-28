import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/home_notification_item.dart';
import 'package:food_delivery/src/presentation/views/tab/home/widgets/search_text_field.dart';
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
            )
          ],
        ),
      ]),
    );
  }
}
