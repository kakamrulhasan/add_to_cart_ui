import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/resources/color_manager.dart';
import 'package:flutter_application_12/data/model/product_showcase_view_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({required this.state, super.key});

  final ProductShowcaseViewState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.arrow_back_ios_rounded,
          color: ColorManager.white,
          size: 24.sp,
        ),
        SizedBox(width: 30.w),
        Image.asset(
          state.brandLogoAsset,
          width: 50.w,
          height: 50.h,
          color: ColorManager.white,
        ),
        const Spacer(),
        Icon(Icons.favorite_outline, color: ColorManager.white, size: 24.sp),
        SizedBox(width: 15.w),
        Icon(
          Icons.shopping_bag_outlined,
          color: ColorManager.white,
          size: 24.sp,
        ),
        SizedBox(width: 10.w),
        Image.asset(
          state.trailingIconAsset,
          width: 30.w,
          height: 30.h,
          color: ColorManager.white,
        ),
      ],
    );
  }
}
