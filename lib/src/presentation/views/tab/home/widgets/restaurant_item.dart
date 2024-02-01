import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:food_delivery/src/utils/resources/app_colors.dart";
import "package:food_delivery/src/utils/resources/size_extension.dart";
class RestaurantItem extends StatelessWidget {
  const RestaurantItem({super.key, required this.image, required this.restaurantName, required this.time});

  final String image;
  final String restaurantName;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(22.r)),
        color: Colors.white,
        boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.1),
                        offset: const Offset(0, 10))
                  ],


      ),
      child: Padding(
        padding: EdgeInsets.all(16.w).w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            SizedBox(
              height: 120.h,
              width: 120.w,
              child: Image.asset(image, fit: BoxFit.cover,)),
              Text(
                      restaurantName,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                      ),
                    ),
                    4.ph,
                    Text(
                      time,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.textLabelColor,
                      ),
                    ),
        
        
        
        
        
          ],
        ),
      ),
    );
  }
}