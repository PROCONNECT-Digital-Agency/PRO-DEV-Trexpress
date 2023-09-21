import 'dart:io';
import 'dart:ui';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:g_customer/src/presentation/pages/main/shop/categories/riverpod/provider/categories_provider.dart';
import 'package:g_customer/src/presentation/pages/main/shop/details/riverpod/provider/home_search_provider.dart';
import 'package:g_customer/src/presentation/pages/main/shop/details/riverpod/provider/home_visible_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../models/data/remote_message_data.dart';
import '../../../theme/theme.dart';
import '../profile/profile_modal.dart';
import '../../../../core/utils/utils.dart';
import '../../../components/components.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_router.gr.dart';
import 'liked/riverpod/provider/liked_provider.dart';
import '../../../../riverpod/provider/app_provider.dart';

class ShopMainPage extends ConsumerStatefulWidget {
  const ShopMainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ShopMainPage> createState() => _ShopMainPageState();
}

class _ShopMainPageState extends ConsumerState<ShopMainPage> {
  @override
  @override
  void initState() {
    //initDynamicLinks();
    FirebaseMessaging.instance.requestPermission(
      sound: true,
      alert: true,
      badge: false,
    );

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      RemoteMessageData data = RemoteMessageData.fromJson(message.data);
      if (data.type == "news_publish") {
        context.router.popUntilRoot();
        // ignore: deprecated_member_use
        await launch(
          "${AppConstants.baseUrl}/blog/${message.data["uuid"]}",
          forceSafariVC: true,
          forceWebView: true,
          enableJavaScript: true,
        );
      } else {
        context.router.popUntilRoot();
        context.pushRoute(
          OrderDetailsRoute(
              orderId: data.id?.toInt() ?? 0,
              date: message.sentTime.toString()
          ),
        );
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteMessageData data = RemoteMessageData.fromJson(message.data);
      if (data.type == "news_publish") {
        AppHelpers.showCheckTopSnackBarInfo(context,
            "${message.notification?.body}",
            onTap: () async {
              context.router.popUntilRoot();
              // ignore: deprecated_member_use
              await launch(
                "${AppConstants.baseUrl}/blog/${message.data["uuid"]}",
                forceSafariVC: true,
                forceWebView: true,
                enableJavaScript: true,
              );
            });
      } else {
        AppHelpers.showCheckTopSnackBarInfo(context,
            "${AppHelpers.getTranslation(TrKeys.id)} #${message.notification?.title} ${message.notification?.body}",
            onTap: () async {
              context.router.popUntilRoot();
              context.pushRoute(
                OrderDetailsRoute(
                  orderId: data.id?.toInt() ?? 0,
                    date: message.sentTime.toString()
                ),
              );
            });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = ref.watch(appProvider).isDarkMode;
    final bool isLtr = ref.watch(appProvider).isLtr;
    final searchEvent = ref.read(homeSearchProvider.notifier);
    return Directionality(
      textDirection: isLtr ? TextDirection.ltr : TextDirection.rtl,
      child: KeyboardDismisser(
        child: AutoTabsScaffold(
          backgroundColor:
              isDarkMode ? AppColors.dontHaveAnAccBackDark : AppColors.white,
          extendBody: true,
          appBarBuilder: (context, tabsRouter) {
            return
              tabsRouter.activeIndex == 0
                ? AppBar(
                    backgroundColor: isDarkMode
                        ? AppColors.dontHaveAnAccBackDark
                        : AppColors.white,
                    elevation: 0,
                    leadingWidth: 0.r,
                    leading: const SizedBox.shrink(),
                    centerTitle: false,
                    title: Consumer(
                        builder: (context ,ref, child) {
                          final visibleState = ref.watch(homeVisibleProvider);
                          return AnimatedContainer(
                            height: 40,
                            duration: const Duration(milliseconds: 300),
                            child: SearchTextField(
                              needShawdow: true,
                              isVisible: true,
                              hintText: AppHelpers.getTranslation(TrKeys.searchProducts),
                              onChanged: searchEvent.setQuery,
                            ),
                          );
                        }
                    ),
                    actions: [
                      IconButton(
                        splashRadius: 18.r,
                        onPressed: () =>
                            context.pushRoute(const NotificationsRoute()),
                        icon: Icon(
                          FlutterRemix.notification_line,
                          color: isDarkMode ? AppColors.white : AppColors.black,
                          size: 22.r,
                        ),
                      ),
                    ],
                  )
                : tabsRouter.activeIndex == 1
                    ? AppBar(
                        backgroundColor: isDarkMode
                            ? AppColors.dontHaveAnAccBackDark
                            : AppColors.white,
                        elevation: 0,
                        leadingWidth: 0.r,
                        leading: const SizedBox.shrink(),
                        centerTitle: true,
                        title: Consumer(
                            builder: (context ,ref, child) {
                              final notifier = ref.read(categoriesProvider.notifier);
                              return AnimatedContainer(
                                height: 40,
                                duration: const Duration(milliseconds: 300),
                                child:  SearchTextField(
                                  needShawdow: true,
                                  hintText: AppHelpers.getTranslation(TrKeys.search),
                                  onChanged: notifier.setQuery,
                                ),
                              );
                            }
                        ),
                      )
                    : AppBar(
                backgroundColor: isDarkMode
                    ? AppColors.dontHaveAnAccBackDark
                    : AppColors.white,
                elevation: 0,
                leadingWidth: 0.r,
                leading: const SizedBox.shrink(),
                centerTitle: true,
                title:Consumer(
                    builder: (context ,ref, child) {
                      final event = ref.read(likedProvider.notifier);
                      return AnimatedContainer(
                        height: 40,
                        duration: const Duration(milliseconds: 300),
                        child: SearchTextField(
                          needShawdow: true,
                          onChanged: event.setQuery,
                          hintText: AppHelpers.getTranslation(TrKeys.searchProducts),
                        ),
                      );
                    }
                ),
              );
          },
          routes: const [
            ShopDetailsRoute(),

            CategoriesRoute(),
            LikedRoute(),
          ],
          bottomNavigationBuilder: (context, tabRouter) {
            return ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
                child: Container(
                    height: Platform.isAndroid ? 72.r : 99.r,
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? AppColors.dontHaveAnAccBackDark.withOpacity(0.7)
                          : AppColors.white.withOpacity(0.7),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.bottomNavigationShadow,
                          spreadRadius: 25.r,
                          blurRadius: 35.r,
                          offset: Offset(0.r, 0.r),
                        ),
                      ],
                    ),
                    alignment: Alignment.bottomCenter,
                    child: BottomNavigationBar(
                      selectedItemColor:
                          isDarkMode ? AppColors.white : AppColors.black,
                      unselectedItemColor: AppColors.unselectedBottomItem,
                      backgroundColor: AppColors.bottomNavigationBack,
                      onTap: (index) {
                        if (index == 3) {
                          context.pushRoute(const OrderRoute());
                          return;
                        } else if (index == 4) {
                          AppHelpers.showCustomModalBottomSheet(
                            context: context,
                            modal: const ProfileModal(),
                            isDarkMode: isDarkMode,
                            paddingTop: 50,
                          );
                          return;
                        }
                        if (index == 2 && tabRouter.activeIndex != 2) {
                          ref.read(likedProvider.notifier).fetchLikedProducts();
                        }
                        tabRouter.setActiveIndex(index);
                      },
                      type: BottomNavigationBarType.fixed,
                      elevation: 0,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      items: [
                        _barItem(
                          iconData: FlutterRemix.store_2_fill,
                          label: '${AppHelpers.getAppName()}',
                          isSelected: tabRouter.activeIndex == 0,
                        ),
                        _barItem(
                          iconData: FlutterRemix.apps_2_fill,
                          label: AppHelpers.getTranslation(TrKeys.categories),
                          isSelected: tabRouter.activeIndex == 1,
                        ),
                        _barItem(
                          iconData: FlutterRemix.heart_3_fill,
                          label: AppHelpers.getTranslation(TrKeys.liked),
                          isSelected: tabRouter.activeIndex == 2,
                        ),
                        _barItem(
                          iconData: FlutterRemix.shopping_bag_3_fill,
                          label: AppHelpers.getTranslation(TrKeys.order),
                          isSelected: tabRouter.activeIndex == 3,
                        ),
                        BottomNavigationBarItem(
                          icon: CommonImage(
                            imageUrl: LocalStorage.instance.getProfileImage(),
                            width: 34,
                            height: 34,
                            radius: 20,
                            errorRadius: 20,
                          ),
                          label: AppHelpers.getTranslation(TrKeys.profile),
                        ),
                      ],
                    )),
              ),
            );
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem _barItem(
      {required IconData iconData,
      required String label,
      required bool isSelected}) {
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    return BottomNavigationBarItem(
      icon: Badge(
        isLabelVisible: label == AppHelpers.getTranslation(TrKeys.order),
        label: Consumer(
          builder: (context, ref, child) {
            return Text(
              LocalStorage.instance.getCartProducts().length.toString(),
              style: GoogleFonts.inter(
                color: AppColors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            );
          },
        ),
        child: Icon(
          iconData,
          color: isSelected
              ? (isDarkMode ? AppColors.white : AppColors.black)
              : (isDarkMode
                  ? AppColors.white.withOpacity(0.5)
                  : AppColors.unselectedBottomItem),
          size: 24.r,
        ),
      ),
      label: label,
    );
  }
}

