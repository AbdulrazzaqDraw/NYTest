import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

Widget? getSkeleton(bool isListView) {

  return isListView
      ? ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 12.5.w, vertical: 10.h),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (c, i) {
            return Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Shimmer(
                      duration: Duration(seconds: 3),

                      color: Colors.black,
                      //Default value
                      colorOpacity: 0,
                      //Default value
                      enabled: true,
                      //Default value
                      direction: ShimmerDirection.fromLTRB(),
                      //Default Value
                      child: Container(
                        color: Colors.white,
                        width: 0.8.sw,
                        height: 100.h,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60.r),
                              child: Shimmer(
                                color: Colors.black,
                                child: Container(
                                  width: 75.w,
                                  height: 75.h,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.r),
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black54,
                              size: 20.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          })
      : GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 12.5.w, vertical: 10.h),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.h,
            mainAxisSpacing: 5.w,
          ),
          itemBuilder: (c, i) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Shimmer(

                      duration: Duration(seconds: 3),
                      color: Colors.black,
                      colorOpacity: 0,
                      //Default value
                      enabled: true,
                      //Default value
                      direction: ShimmerDirection.fromLTRB(),
                      //Default Value
                      child: Container(
                        color: Colors.white,

                      ),
                    ),
                  ),

                ],
              ),
            );
          });
}
