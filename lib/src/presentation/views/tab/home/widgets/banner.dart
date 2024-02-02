import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:food_delivery/src/presentation/views/tab/home/widgets/button_banner.dart";
import "package:food_delivery/src/utils/resources/app_colors.dart";
import "package:food_delivery/src/utils/resources/app_images.dart";

class BannerItem extends StatelessWidget {
  const BannerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.gradient,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Stack(children: [
        Positioned(
            child: SizedBox(
          height: 130.h,
          width: double.infinity,
          child: Image.asset(
            AppImages.groupTwo,
            fit: BoxFit.fill,
            opacity: const AlwaysStoppedAnimation(.5),
          ),
        )),
        Padding(
          padding: EdgeInsets.all(16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(

                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Special Deal For\nOctober",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ButtonBanner(
                    title: "Buy Now",
                    onTap: () {},
                    radius: 16,
                  ),
                ],
              )
            ],
          ),
        ),
      ],),
    );
  }
}
