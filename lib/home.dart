import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    List<int> listColor = [
      0xffff6968,
      0xff7a52ff,
      0xffff8f61,
      0xff2ac3ff,
      0xff5a65ff,
      0xff96da45,
    ];
    List<String> listName = [
      "Hart Rate",
      "Sleep",
      "Energy Born",
      "Steps",
      "Running",
      "Cycling"
    ];
    List<IconData> listIcon = [
      CupertinoIcons.heart_fill,
      CupertinoIcons.moon_zzz_fill,
      Icons.local_fire_department,
      Icons.support_agent,
      CupertinoIcons.car,
      Icons.accessible_sharp
    ];
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
              children: [
                Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 300,
                                childAspectRatio: 1 / 1,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemCount: 6,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Color(listColor[index]),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        listName[index],
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    )),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      margin: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.4),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        listIcon[index],
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Center(child: Text("Week"))],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Center(child: Text("Month"))],
                ),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
