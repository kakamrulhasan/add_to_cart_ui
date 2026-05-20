import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/resources/color_manager.dart';
import 'package:flutter_application_12/data/model/product_showcase_view_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({required this.state, super.key});

  final ProductShowcaseViewState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              state.currentPrice,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 35.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              state.previousPrice,
              style: TextStyle(
                color: ColorManager.grey,
                decoration: TextDecoration.lineThrough,
                fontSize: 24.sp,
                decorationThickness: 2,
                decorationColor: ColorManager.grey,
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: ColorManager.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: ColorManager.red,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Color',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: ColorManager.white,
                    size: 22.sp,
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          state.discountLabel,
          style: GoogleFonts.bebasNeue(
            color: ColorManager.discount,
            fontWeight: FontWeight.w900,
            fontSize: 23.sp,
          ),
        ),
        Text(
          state.description,
          style: TextStyle(color: ColorManager.white, fontSize: 14.sp),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.buttonBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 30.h),
              ),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(width: 20.w),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.buttonBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 30.h),
              ),
              child: Text(
                'Buy Now',
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
