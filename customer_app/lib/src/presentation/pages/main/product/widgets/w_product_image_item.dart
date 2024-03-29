import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../theme/theme.dart';
import '../../../../components/components.dart';

class WProductItemImageItem extends StatelessWidget {
  final String url;
  final bool isActive;
  final VoidCallback onTap;

  const WProductItemImageItem({
    Key? key,
    required this.url,
    required this.onTap,  this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 42.r,
          height: 42.r,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.r),
            border: Border.all(color: isActive ? AppColors.accentGreen : AppColors.transparent)
          ),
          child: InkWell(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(21.r),
              child: CachedNetworkImage(
                imageUrl: url,
                width: 42.r,
                height: 42.r,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, progress) {
                  return MakeShimmer(
                    child: Container(
                      decoration: const BoxDecoration(color: AppColors.mainBack),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21.r),
                      color: AppColors.white,
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      FlutterRemix.image_line,
                      color: AppColors.black,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        13.47.horizontalSpace,
      ],
    );
  }
}
