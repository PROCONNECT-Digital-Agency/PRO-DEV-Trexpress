import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components.dart';
import '../../theme/theme.dart';
import '../../../core/utils/utils.dart';
import '../../../core/constants/constants.dart';

class ProductSearchShimmer extends StatelessWidget {
  final bool hideImages;

  const ProductSearchShimmer({Key? key, this.hideImages = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return Container(
      color: isDarkMode ? AppColors.dontHaveAnAccBackDark : AppColors.white,
      child: ListView(
        physics: const CustomBouncingScrollPhysics(),
        children: [
          Container(
            height: 1.r,
            color: isDarkMode
                ? AppColors.white.withOpacity(0.06)
                : AppColors.mainBack,
          ),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                21.verticalSpace,
                Text(
                  AppHelpers.getTranslation(TrKeys.suggestions).toUpperCase(),
                  style: GoogleFonts.k2d(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? AppColors.white : AppColors.black,
                  ),
                ),
                1.verticalSpace,
                const SearchLocationListShimmer(height: 47, borderRadius: 8),
                16.verticalSpace,
                if (!hideImages)
                  Text(
                    AppHelpers.getTranslation(TrKeys.products).toUpperCase(),
                    style: GoogleFonts.k2d(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: isDarkMode ? AppColors.white : AppColors.black,
                    ),
                  ),
                16.verticalSpace,
                if (!hideImages) const SearchProductListShimmer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
