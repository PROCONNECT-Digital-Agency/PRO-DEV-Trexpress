import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../theme/theme.dart';
import '../../../../../../../core/utils/utils.dart';
import 'riverpod/provider/atb_payment_provider.dart';
import '../../../../../../components/components.dart';
import '../../../../../../../core/constants/constants.dart';

class OrderSuccessPage extends StatelessWidget {
  final int? transactionId;

  const OrderSuccessPage({Key? key, this.transactionId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return Scaffold(
      backgroundColor: isDarkMode ? AppColors.mainBackDark : AppColors.white,
      appBar: CommonAppBar(
        title: AppHelpers.getTranslation(TrKeys.order),
        onLeadingPressed: context.popRoute,
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Divider(thickness: 1.r, height: 1.r, color: AppColors.divider),
            Column(
              children: [
                Container(
                  width: 100.r,
                  height: 100.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: AppColors.accentGreen.withOpacity(0.1),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    FlutterRemix.check_double_fill,
                    size: 50.r,
                    color: AppColors.accentGreen,
                  ),
                ),
                14.verticalSpace,
                Text(
                  AppHelpers.getTranslation(TrKeys.orderSubmitText),
                  style: GoogleFonts.k2d(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: isDarkMode ? AppColors.white : AppColors.black,
                    letterSpacing: -0.7,
                  ),
                ),
                24.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: AccentLoginButton(
                        title: AppHelpers.getTranslation(TrKeys.payLater),
                        onPressed: context.popRoute,
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) => AccentLoginButton(
                          background: AppColors.accentGreen,
                          title: AppHelpers.getTranslation(TrKeys.pay),
                          isLoading: ref.watch(atbPaymentProvider).isLoading,
                          onPressed: () => ref
                              .read(atbPaymentProvider.notifier)
                              .fetchAtbPayment(
                                transactionId: transactionId,
                                redirected: context.popRoute,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100.r),
          ],
        ),
      ),
    );
  }
}
