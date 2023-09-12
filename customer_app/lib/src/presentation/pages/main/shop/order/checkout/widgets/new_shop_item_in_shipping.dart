import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../theme/theme.dart';
import '../../../../../../../models/models.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../components/components.dart';
import '../../../../../../../core/constants/constants.dart';

class NewShopItemInShipping extends StatelessWidget {
  final ShopData shop;

  const NewShopItemInShipping({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 132.r,
          height: 106.r,
          color: isDarkMode ? AppColors.mainBackDark : AppColors.white,
          padding: REdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonImage(
                imageUrl: shop.logoImg,
                width: 34,
                height: 34,
                radius: 54,
                errorRadius: 54,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${shop.translation?.title}',
                    maxLines: 1,
                    style: GoogleFonts.k2d(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: isDarkMode ? AppColors.white : AppColors.black,
                      letterSpacing: -1,
                    ),
                  ),
                  Text(
                    AppHelpers.getTranslation(TrKeys.store),
                    style: GoogleFonts.k2d(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: AppColors.hintColor,
                      letterSpacing: -1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        VerticalDivider(
          thickness: 1.r,
          width: 1.r,
          color: isDarkMode ? AppColors.dragElementDark : AppColors.mainBack,
        ),
      ],
    );
  }
}
