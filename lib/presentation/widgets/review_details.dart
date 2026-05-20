import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/resources/color_manager.dart';
import 'package:flutter_application_12/data/model/product_showcase_view_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewDetails extends StatelessWidget {
  const ReviewDetails({required this.state, super.key});

  final ProductShowcaseViewState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.title,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              state.subtitle,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              state.category,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 18.sp,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.r),
            border: Border.all(color: ColorManager.white, width: 0.5),
          ),
          child: Row(
            children: [
              Icon(Icons.star, color: ColorManager.amber, size: 18.sp),
              Text(
                state.rating,
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
