import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/resources/color_manager.dart';
import 'package:flutter_application_12/presentation/widgets/price_button.dart';
import 'package:flutter_application_12/presentation/widgets/product_app_bar.dart';
import 'package:flutter_application_12/presentation/widgets/product_images_section.dart';
import 'package:flutter_application_12/presentation/widgets/review_details.dart';
import 'package:flutter_application_12/data/model/product_showcase_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductShowcaseViewModel _viewModel = ProductShowcaseViewModel();

  @override
  Widget build(BuildContext context) {
    final state = _viewModel.state;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(minHeight: 1.sh),
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorManager.backgroundTop,
                ColorManager.backgroundMiddle,
                ColorManager.black,
              ],
            ),
          ),
          child: Column(
            children: [
              ProductAppBar(state: state),
              SizedBox(height: 20.h),
              ReviewDetails(state: state),
              SizedBox(height: 30.h),
              ProductImagesSection(state: state),
              SizedBox(height: 10.h),
              PriceButton(state: state),
            ],
          ),
        ),
      ),
    );
  }
}
