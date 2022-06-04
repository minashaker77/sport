import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WeekTabScreen extends StatelessWidget {
  const WeekTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listImage = [
      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png",
      "https://www.gettyimages.pt/gi-resources/images/Homepage/Hero/PT/PT_hero_42_153645159.jpg",
      "https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    ];
    return SingleChildScrollView(
        child: Column(
      children: [
        ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, index) {
              return CachedNetworkImage(
                imageUrl: listImage[index],
                imageBuilder: (context, imageProvider) => Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 200,
                  width: double.infinity,
                ),
                placeholder: (context, url) => Center(
                  child: Text("waiting..."),
                ),
                errorWidget: (context, url, error) => Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 40,
                ),
              );
            })
      ],
    ));
  }
}
