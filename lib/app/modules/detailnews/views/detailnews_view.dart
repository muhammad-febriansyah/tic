import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tic/app/data/models/news.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';

import '../controllers/detailnews_controller.dart';

class DetailnewsView extends GetView<DetailnewsController> {
  final News beritaList = Get.arguments;
  final controller = Get.put(DetailnewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "detail".tr,
                style: TextStyle(
                  color: blueClr,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              TextSpan(
                text: " ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              TextSpan(
                text: "berita".tr,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Center(
              child: Image.asset(
                "assets/icon.png",
                fit: BoxFit.contain,
                // width: 37,
                height: 30.h,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image(
                    image: NetworkImage(
                      baseUrl.imgUrl + beritaList.image,
                    ),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                height: 800.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        beritaList.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            size: 18,
                            color: blueClr,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            DateFormat.yMMMd().format(
                              DateTime.parse(
                                beritaList.createdAt,
                              ),
                            ),
                            style: const TextStyle(
                              color: blueClr,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("assets/pria.png"),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            beritaList.user.name,
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
                      Expanded(
                        child: Text(
                          beritaList.body,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTag(backgrondColor: blueClr, children: [
                            const Icon(
                              CupertinoIcons.tags_solid,
                              color: kWhiteclr,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              beritaList.category.title,
                              style: const TextStyle(
                                  fontSize: 12, color: kWhiteclr),
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
                                beritaList.views,
                                style: const TextStyle(
                                    fontSize: 12, color: kWhiteclr),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      // Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
