import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/theme.dart';
import '../../../core/utils/utils.dart';
import '../../../core/constants/constants.dart';
import '../../../riverpod/provider/app_provider.dart';

class SearchTextField extends ConsumerWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? textEditingController;
  final ValueSetter<String>? onChanged;
  final bool isVisible;
  final bool needShawdow;
  const SearchTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.textEditingController,
    this.onChanged,
    this.isVisible = true,
    this.needShawdow = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appProvider);
    return Container(
      height: 40,
      padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:needShawdow? AppColors.searchBehindColor:Colors.transparent
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child:  TextFormField(
          autofocus: false,
          style: GoogleFonts.k2d(
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            color: state.isDarkMode ? AppColors.white : AppColors.black,
          ),
          onChanged: onChanged,
          controller: textEditingController,
          cursorColor: state.isDarkMode ? AppColors.white : AppColors.black,
          cursorWidth: 1,
          decoration: InputDecoration(
            hintStyle: GoogleFonts.k2d(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: state.isDarkMode
                  ? AppColors.white.withOpacity(0.5)
                  : AppColors.hintColor,
            ),
            hintText: hintText ?? AppHelpers.getTranslation(TrKeys.searchProducts),
            contentPadding: REdgeInsets.symmetric(horizontal: 15),
            prefixIcon: isVisible ? Icon(
              FlutterRemix.search_2_line,
              size: 20.r,
              color: state.isDarkMode ? AppColors.white : AppColors.black,
            ) : const SizedBox.shrink(),
            suffixIcon: suffixIcon,
            fillColor: state.isDarkMode ? AppColors.mainBackDark : AppColors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: state.isDarkMode ? AppColors.mainBackDark : AppColors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: state.isDarkMode ? AppColors.mainBackDark : AppColors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: state.isDarkMode ? AppColors.mainBackDark : AppColors.white,
              ),
            ),
          ),
        ),));
  }
}
