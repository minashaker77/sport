import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DayTabScreen extends StatelessWidget {
  const DayTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
                              borderRadius: BorderRadius.circular(50)),
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
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
