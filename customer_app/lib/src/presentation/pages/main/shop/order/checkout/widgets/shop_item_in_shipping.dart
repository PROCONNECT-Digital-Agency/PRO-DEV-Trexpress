import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../models/models.dart';
import '../../../../../../theme/theme.dart';
import '../riverpod/provider/checkout_provider.dart';

class ShopItemInShipping extends ConsumerWidget {
  final int index;
  final ShopData shop;

  const ShopItemInShipping({Key? key, required this.index, required this.shop})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkoutProvider);
    final notifier = ref.read(checkoutProvider.notifier);
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            notifier.setSelectedShopIndex(index);
            if (shop.translation?.title?.toUpperCase() == 'PICKUP') {
              notifier.changeDeliveryType(DeliveryTypeEnum.pickup, shop: shop);
            } else {
              notifier.changeDeliveryType(DeliveryTypeEnum.delivery, shop: shop);
            }
          },
          child: Container(
            width: 114.w,
            height: 90.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              color: isDarkMode ? AppColors.mainBackDark : AppColors.white,
              border: Border.all(
                color: AppColors.unselectedTab
              )
            ),
            margin: REdgeInsets.only(left: 8),
            padding: REdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${shop.translation?.title}',
                      maxLines: 1,
                      style: GoogleFonts.k2d(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color:
                        isDarkMode ? AppColors.white : AppColors.black,
                        letterSpacing: -1,
                      ),
                    ),
                   const Spacer(),
                    state.selectedShopIndex == index
                        ? Container(
                            width: 18.r,
                            height: 18.r,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.r),
                              color: AppColors.accentGreen,
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              FlutterRemix.check_line,
                              color: AppColors.white,
                              size: 16.r,
                            ),
                          )
                        : Container(
                            width: 15.r,
                            height: 15.r,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.r),
                              color: AppColors.white,
                              border: Border.all(
                                width: 1.r,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${shop.times.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', ' - ')}  days',
                      style: GoogleFonts.k2d(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: isDarkMode
                            ? AppColors.white
                            : AppColors.black,
                        letterSpacing: -1,
                      ),
                    ),
                    6.verticalSpace,
                    Text(
                      NumberFormat.currency(
                        symbol: LocalStorage.instance
                            .getSelectedCurrency()
                            ?.symbol,
                      ).format(shop.price),
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                        color: isDarkMode
                            ? AppColors.white
                            : AppColors.unselectedTab,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
