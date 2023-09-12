import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theme/theme.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/constants/constants.dart';

class GenderPopupButton extends StatelessWidget {
  final String initialValue;
  final ValueSetter<String> onSelect;
  final String value;

  const GenderPopupButton({
    Key? key,
    required this.initialValue,
    required this.onSelect,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return PopupMenuButton<String>(
      initialValue: initialValue,
      elevation: 0,
      itemBuilder: (context) {
        return [
          PopupMenuItem<String>(
            value: 'male',
            child: Text(
              AppHelpers.getTranslation(TrKeys.male),
              style: GoogleFonts.k2d(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: isDarkMode ? AppColors.white : AppColors.black,
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'female',
            child: Text(
              AppHelpers.getTranslation(TrKeys.female),
              style: GoogleFonts.k2d(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: isDarkMode ? AppColors.white : AppColors.black,
              ),
            ),
          ),
        ];
      },
      onSelected: onSelect,
      child: Container(
        height: 58.r,
        padding: REdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: isDarkMode ? AppColors.dontHaveAnAccBackDark : AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isDarkMode ? AppColors.borderDark : AppColors.borderColor,
            width: 1.r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppHelpers.getTranslation(TrKeys.gender),
                  style: GoogleFonts.k2d(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: isDarkMode ? AppColors.white : AppColors.black,
                    letterSpacing: -14 * 0.01,
                  ),
                ),
                5.verticalSpace,
                Text(
                  value == 'male'
                      ? AppHelpers.getTranslation(TrKeys.male)
                      : AppHelpers.getTranslation(
                          TrKeys.female,
                        ),
                  style: GoogleFonts.k2d(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? AppColors.white : AppColors.black,
                    letterSpacing: -14 * 0.01,
                  ),
                ),
              ],
            ),
            Icon(
              FlutterRemix.arrow_down_s_line,
              color: isDarkMode ? AppColors.white : AppColors.black,
              size: 18.r,
            ),
          ],
        ),
      ),
    );
  }
}
