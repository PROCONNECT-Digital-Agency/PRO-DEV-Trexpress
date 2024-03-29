import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_customer/src/presentation/pages/main/profile/order_history/widgets/on_the_way_tab_body.dart';
import 'package:g_customer/src/presentation/pages/main/profile/order_history/widgets/ready_tab_body.dart';

import 'widgets/open_tab_body.dart';
import '../../../../theme/theme.dart';
import 'widgets/canceled_tab_body.dart';
import 'widgets/order_history_tab.dart';
import 'widgets/completed_tab_body.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../components/components.dart';
import '../../../../../core/constants/constants.dart';
import 'riverpod/provider/order_history_provider.dart';

class OrderHistoryPage extends ConsumerStatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends ConsumerState<OrderHistoryPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(
      () {
        if (!_tabController.indexIsChanging) {
          ref
              .read(orderHistoryProvider.notifier)
              .changeActiveTab(_tabController.index);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderHistoryProvider);
    final notifier = ref.read(orderHistoryProvider.notifier);
    final bool isDarkMode = LocalStorage.instance.getAppThemeMode();
    final bool isLtr = LocalStorage.instance.getLangLtr();
    return Directionality(
      textDirection: isLtr ? TextDirection.ltr : TextDirection.rtl,
      child: WillPopScope(
        onWillPop: () async {
          context.router.popUntilRoot();
          return true;
        },
        child: Scaffold(
          backgroundColor:
              isDarkMode ? AppColors.mainBackDark : AppColors.mainBack,
          appBar: CommonAppBar(
            title: AppHelpers.getTranslation(TrKeys.orderHistory),
            onLeadingPressed: context.router.popUntilRoot,
          ),
          body: Column(
            children: [
              1.verticalSpace,
              Container(
                color: isDarkMode
                    ? AppColors.dontHaveAnAccBackDark
                    : AppColors.white,
                height: 54.r,
                width: 1.sw,
                child: TabBar(
                  physics: const CustomBouncingScrollPhysics(),
                  indicatorColor:
                      isDarkMode ? AppColors.white : AppColors.black,
                  indicatorWeight: 2,
                  isScrollable: true,
                  controller: _tabController,
                  onTap: notifier.changeActiveTab,
                  tabs: [
                    OrderHistoryTab(
                      title: AppHelpers.getTranslation(TrKeys.newOrder),
                      isSelected: state.activeTab == 0,
                      count: state.totalOpenCount,
                    ),
                    OrderHistoryTab(
                      title: AppHelpers.getTranslation(TrKeys.ready),
                      isSelected: state.activeTab == 1,
                      count: state.totalReadyCount,
                    ),
                    OrderHistoryTab(
                      title: AppHelpers.getTranslation(TrKeys.onAWay),
                      isSelected: state.activeTab == 2,
                      count: state.totalOnTheWayCount,
                    ),
                    OrderHistoryTab(
                      title: AppHelpers.getTranslation(TrKeys.delivered),
                      isSelected: state.activeTab == 3,
                      count: state.totalCompletedCount,
                    ),
                    OrderHistoryTab(
                      title: AppHelpers.getTranslation(TrKeys.canceled),
                      isSelected: state.activeTab == 4,
                      count: state.totalCanceledCount,
                    ),
                  ],
                ),
              ),
              1.verticalSpace,
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const CustomBouncingScrollPhysics(),
                  children: const [
                    OpenTabBody(),
                    ReadyTabBody(),
                    OnTheWayTabBody(),
                    CompletedTabBody(),
                    CanceledTabBody(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
