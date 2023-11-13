import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/app/routes/app_pages.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  final controller = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: kWhiteclr,
          child: GetBuilder<NewsController>(
              init: NewsController(),
              builder: (hoho) {
                if (hoho.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: hoho.newsList.length,
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.DETAILNEWS,
                            arguments: hoho.newsList[index]);
                        hoho.update();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: screenwidth,
                          height: screenheight * 0.63,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(20), // Image border

                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(20), // Image border
                                child: Image(
                                  image: NetworkImage(baseUrl.imgUrl +
                                      hoho.newsList[index].image),
                                  fit: BoxFit.cover,
                                  width: screenwidth,
                                  height: screenheight * 0.20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      hoho.newsList[index].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        height: 1.5.h,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              AssetImage("assets/pria.png"),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          hoho.newsList[index].user.name,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            height: 1.5.h,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomTag(
                                            backgrondColor: blueClr,
                                            children: [
                                              const Icon(
                                                CupertinoIcons.tags_solid,
                                                color: kWhiteclr,
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Text(
                                                hoho.newsList[index].category
                                                    .title,
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: kWhiteclr),
                                              ),
                                            ]),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        CustomTag(
                                          backgrondColor: blueClr,
                                          children: [
                                            const Icon(
                                              Icons.remove_red_eye,
                                              color: kWhiteclr,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              hoho.newsList[index].views,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: kWhiteclr),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.w,
                                    ),
                                    Text(
                                      hoho.newsList[index].body,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        height: 1.5.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}

class CustomTag extends StatelessWidget {
  const CustomTag({
    Key? key,
    required this.backgrondColor,
    required this.children,
  }) : super(key: key);
  final Color backgrondColor;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgrondColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: children,
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
