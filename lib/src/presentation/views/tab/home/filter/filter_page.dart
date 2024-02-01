import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/presentation/views/tab/home/filter/widgets/filter_item.dart';
import 'package:food_delivery/src/presentation/views/tab/home/filter/widgets/filter_item_three.dart';
import 'package:food_delivery/src/presentation/views/tab/home/filter/widgets/filter_item_two.dart';
import 'package:food_delivery/src/presentation/widgets/global_button.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';

import '../../../../../utils/resources/app_icons.dart';
import '../../../../../utils/resources/app_images.dart';
import '../widgets/home_notification_item.dart';
import '../widgets/search_text_field.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

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
              child: const SearchTextField(
                  hintText: "What do you want to order?",
                  icon: AppIcons.search),
            ),
            24.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  const FilterItemOne(),
                  24.ph,
                  const FilterItemTwo(),
                  24.ph,
                  const FilterItemThree(),
                ],
              ),
            )

          ],
        ),
        Positioned(
          bottom: 24.w,
          right: 24.w,
          left: 24.w,
          child: GlobalButton(
            title: "Search",
            onTap: () {
              Navigator.pop(context);
            },
            textColor: Colors.white,
          ),
        ),
      ]),
    );
  }
}
