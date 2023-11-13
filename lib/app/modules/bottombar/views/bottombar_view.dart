import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/app/modules/event/views/event_view.dart';
import 'package:tic/app/modules/home/views/home_view.dart';
import 'package:tic/app/modules/maps/views/maps_view.dart';
import 'package:tic/app/modules/news/views/news_view.dart';
import 'package:tic/app/modules/tour/views/tour_view.dart';
import 'package:tic/app/routes/app_pages.dart';
import 'package:tic/color.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottombarController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 150.h,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Obx(
                  () => Text(
                    controller.address.value,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.GALLERY);
              },
              icon: Icon(
                EvaIcons.image2,
                color: Colors.black,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.TRANSLATIONS);
              },
              icon: Icon(
                EvaIcons.settings2,
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex(),
            children: [
              HomeView(),
              TourView(),
              EventView(),
              NewsView(),
              MapsView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: blueClr,
          onTap: controller.changeTabindex,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.tabIndex(),
          items: [
            _bottomNavigator(icon: EvaIcons.home, label: ""),
            _bottomNavigator(icon: EvaIcons.compass, label: ""),
            _bottomNavigator(icon: EvaIcons.calendar, label: ""),
            _bottomNavigator(icon: CupertinoIcons.news_solid, label: ""),
            _bottomNavigator(icon: EvaIcons.map, label: ""),
          ],
        ),
      );
    });
  }

  _bottomNavigator({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 25,
      ),
      label: label,
    );
  }
}
