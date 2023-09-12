import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/utils.dart';
import '../../../models/models.dart';
import '../../theme/theme.dart';

class ColorExtras extends StatelessWidget {
  final int groupIndex;
  final List<UiExtra> uiExtras;
  final Function(UiExtra) onUpdate;

  const ColorExtras({
    Key? key,
    required this.groupIndex,
    required this.uiExtras,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.r,
      runSpacing: 10.r,
      children: uiExtras.map(
        (uiExtra) {
          return AppHelpers.checkIfHex(uiExtra.value)
              ? Material(
                  borderRadius: BorderRadius.circular(21.r),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(21.r),
                    onTap: () {
                      if (uiExtra.isSelected) {
                        return;
                      }
                      onUpdate(uiExtra);
                    },
                    child: Container(
                            width: 42.r,
                            height: 42.r,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(int.parse(
                                  '0xFF${uiExtra.value.substring(1, 7)}')),
                              border: Border.all(
                                color:uiExtra.isSelected? AppColors.accentGreen : AppColors.white,
                                width: 1.5.r,
                              ),
                            ),
                          )
                  ),
                )
              : Material(
                  borderRadius: BorderRadius.circular(8.r),
                  color:  AppColors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8.r),
                    onTap: () {
                      if (uiExtra.isSelected) {
                        return;
                      }
                      onUpdate(uiExtra);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border:
                            Border.all(color: uiExtra.isSelected ? AppColors.accentGreen : AppColors.black.withOpacity(0.1),width: 1.5.r),
                      ),
                      padding: REdgeInsets.all(12),
                      child: Text(
                        uiExtra.value,
                        style: GoogleFonts.k2d(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color:  AppColors.black,
                          letterSpacing: -14 * 0.01,
                        ),
                      ),
                    ),
                  ),
                );
        },
      ).toList(),
    );
  }
}
