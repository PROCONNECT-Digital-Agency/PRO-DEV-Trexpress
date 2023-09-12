import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../theme/theme.dart';
import '../../../../../../../models/models.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../components/components.dart';
import '../../../../../../../core/constants/constants.dart';

class SingleShopInfoModal extends StatelessWidget {
  final ShopData? shop;

  const SingleShopInfoModal({Key? key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    final bool isLtr = LocalStorage.instance.getLangLtr();
    return Directionality(
      textDirection: isLtr ? TextDirection.ltr : TextDirection.rtl,
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            11.verticalSpace,
            Container(
              width: 49.r,
              height: 3.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(62.r),
                color: AppColors.dragElement,
              ),
            ),
            13.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                physics: const CustomBouncingScrollPhysics(),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        AppHelpers.getTranslation(TrKeys.storeInfo)
                            .toUpperCase(),
                        style: GoogleFonts.k2d(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: isDarkMode ? AppColors.white : AppColors.black,
                          letterSpacing: -14 * 0.01,
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: isDarkMode
                            ? AppColors.mainBackDark
                            : AppColors.dontHaveAccBtnBack,
                      ),
                      width: double.infinity,
                      padding: REdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          44.verticalSpace,
                          Text(
                            '${shop?.translation?.title} ${AppHelpers.getTranslation(TrKeys.store).toLowerCase()}',
                            style: GoogleFonts.k2d(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -0.3,
                            ),
                          ),
                          6.verticalSpace,
                          Text(
                            '${shop?.translation?.address}',
                            style: GoogleFonts.k2d(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -14 * 0.01,
                            ),
                          ),
                          23.verticalSpace,
                        ],
                      ),
                    ),
                    9.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: isDarkMode
                            ? AppColors.mainBackDark
                            : AppColors.dontHaveAccBtnBack,
                      ),
                      width: double.infinity,
                      padding: REdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          44.verticalSpace,
                          Text(
                            AppHelpers.getTranslation(TrKeys.workingHours),
                            style: GoogleFonts.k2d(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -0.3,
                            ),
                          ),
                          6.verticalSpace,
                          Text(
                            '${shop?.openTime} - ${shop?.closeTime}',
                            style: GoogleFonts.k2d(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -14 * 0.01,
                            ),
                          ),
                          23.verticalSpace,
                        ],
                      ),
                    ),
                    9.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: isDarkMode
                            ? AppColors.mainBackDark
                            : AppColors.dontHaveAccBtnBack,
                      ),
                      width: double.infinity,
                      padding: REdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          44.verticalSpace,
                          Text(
                            AppHelpers.getTranslation(TrKeys.deliveryRange),
                            style: GoogleFonts.k2d(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -0.3,
                            ),
                          ),
                          6.verticalSpace,
                          Text(
                            '${shop?.deliveryRange} km',
                            style: GoogleFonts.k2d(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -14 * 0.01,
                            ),
                          ),
                          23.verticalSpace,
                        ],
                      ),
                    ),
                    9.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: isDarkMode
                            ? AppColors.mainBackDark
                            : AppColors.dontHaveAccBtnBack,
                      ),
                      width: double.infinity,
                      padding: REdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          44.verticalSpace,
                          Text(
                            AppHelpers.getTranslation(TrKeys.phone),
                            style: GoogleFonts.k2d(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -0.3,
                            ),
                          ),
                          6.verticalSpace,
                          Text(
                            '+${shop?.phone}',
                            style: GoogleFonts.k2d(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: isDarkMode
                                  ? AppColors.white
                                  : AppColors.black,
                              letterSpacing: -14 * 0.01,
                            ),
                          ),
                          23.verticalSpace,
                        ],
                      ),
                    ),
                    40.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
