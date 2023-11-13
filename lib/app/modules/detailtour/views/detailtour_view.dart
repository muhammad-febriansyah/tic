import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/app/data/models/wisata.dart';
import 'package:tic/app/modules/detailtour/views/infotour_view.dart';
import 'package:tic/app/modules/detailtour/views/maptour_view.dart';
import 'package:tic/color.dart';

import '../controllers/detailtour_controller.dart';

class DetailtourView extends GetView<DetailtourController> {
  final controller = Get.put(DetailtourController());
  final Wisata wisata = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
                  text: "tour".tr,
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

          // backgroundColor: blueClr,
          elevation: 0,
          bottom: ButtonsTabBar(
            backgroundColor: Colors.grey,
            unselectedBackgroundColor: Colors.black,
            radius: 10.r,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            borderWidth: 1,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            labelStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                child: Text(
                  "info".tr,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "lokasi".tr,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [InfotourView(), MaptourView()],
        ),
      ),
    );
  }
}
