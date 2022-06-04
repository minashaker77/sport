import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';
import 'package:sport/month_tab.dart';
import 'package:sport/week_tab.dart';

import 'day_tab.dart';

class MainPageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxInt tabIndex = 0.obs;
  late TabController tabController;

  @override
  void onInit() async {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPageController mainPageController = Get.put(MainPageController());
    Color? color = const Color(0xff4b4b87);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: color,
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Text(
                    "START",
                    style: TextStyle(
                        fontSize: 20,
                        color: color,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer()
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: TabBar(
                    isScrollable: true,
                    controller: mainPageController.tabController,
                    labelColor: Colors.white,
                    labelPadding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 30),
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.grey[500],
                    indicator: BubbleTabIndicator(
                        indicatorHeight: 25,
                        indicatorColor: color,
                        tabBarIndicatorSize: TabBarIndicatorSize.label,
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 30)),
                    tabs: const [
                      Text(
                        "Days",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Week",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Month",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: TabBarView(
              controller: mainPageController.tabController,
              children: const [
                DayTabScreen(),
                WeekTabScreen(),
                MonthTabScreen(),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
