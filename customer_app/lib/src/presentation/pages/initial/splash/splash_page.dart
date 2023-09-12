import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/theme.dart';
import '../../../../core/utils/utils.dart';
import '../../../components/components.dart';
import 'riverpod/provider/splash_provider.dart';
import '../../../../core/routes/app_router.gr.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        ref.read(splashProvider.notifier).getActiveLanguages(
              context,
              goMain: () => context.replaceRoute(const ShopMainRoute()),
              goLogin: () => context.replaceRoute(const LoginRoute()),
              goToSelectLang: () =>
                  context.replaceRoute(SelectLanguageRoute(isRequired: true)),
            );
        ref.read(splashProvider.notifier).getTranslations(context);
        if (LocalStorage.instance.getUser() != null) {
          ref.read(splashProvider.notifier).fetchProfileDetails();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return Scaffold(
      backgroundColor: isDarkMode ? AppColors.mainBackDark : AppColors.mainBack,
      body: JumpingDots(
        color: isDarkMode ? AppColors.white : AppColors.black,
      ),
    );
  }
}
