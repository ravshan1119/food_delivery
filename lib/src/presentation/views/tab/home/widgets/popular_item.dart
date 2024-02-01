import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:food_delivery/src/utils/resources/app_colors.dart";
import "package:food_delivery/src/utils/resources/app_images.dart";
import "package:food_delivery/src/utils/resources/size_extension.dart";
class PopularItem extends StatelessWidget {
  const PopularItem({super.key, required this.foodName, required this.time, required this.price});
  final String foodName;
  final String time;
  final String price;

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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        
            SizedBox(
              height: 64.h,
              width: 64.h,
              child: Image.asset(AppImages.photoPopular)),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  Text(
                        foodName,
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
        
        
              
                  Text(
                        "\$ $price",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.c_fead1d,
                        ),
                      ),
        
        
        
        
          ],
        ),
      ),

      
      
    );
  }
}