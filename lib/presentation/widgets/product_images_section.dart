import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/resources/color_manager.dart';
import 'package:flutter_application_12/data/model/product_showcase_view_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({required this.state, super.key});

  final ProductShowcaseViewState state;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  state.menuXAsset,
                  width: 30.w,
                  color: ColorManager.white,
                ),
                SizedBox(height: 30.h),
                Stack(
                  children: [
                    Container(
                      width: 200.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            ColorManager.productCardStart,
                            ColorManager.productCardEnd,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35.h,
                      left: 0,
                      child: Image.asset(
                        state.menuYAsset,
                        width: 190.w,
                        height: 200.h,
                        color: ColorManager.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.bottomRight,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      state.brandText,
                      style: GoogleFonts.bebasNeue(
                        fontSize: 121.sp,
                        color: ColorManager.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: -10.h,
          left: -100.w,
          child: Transform.rotate(
            angle: -0.90,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.shoeGlow.withValues(alpha: 0.3),
                    blurRadius: 250.r,
                    spreadRadius: 20.r,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Image.asset(
                state.shoeAsset,
                width: 340.w,
                height: 310.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
