import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_customer/src/core/routes/app_router.gr.dart';

import '../../../../../../models/models.dart';
import '../../../../../components/shimmers/make_shimmer.dart';
import '../../../../../theme/theme.dart';

class BrandList extends StatelessWidget {
  final BrandData brand;
  const BrandList({
    super.key,
    required this.brand,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Material(
        color: AppColors.mainBack,
        borderRadius: BorderRadius.circular(8.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.r),
          onTap: () => context.pushRoute(BrandDetailsRoute(brand: brand)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: CachedNetworkImage(
              imageUrl: '${brand.img}',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, progress) {
                return MakeShimmer(
                  child: Container(
                    width: 40,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.white,
                    ),
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return Container(
                  height: 132.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.mainBack,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    FlutterRemix.image_line,
                    size: 40.r,
                    color: AppColors.black.withOpacity(0.4),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}