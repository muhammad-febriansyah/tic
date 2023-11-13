import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/color.dart';

import '../controllers/translations_controller.dart';

class TranslationsView extends GetView<TranslationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteclr,
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
                text: "setting".tr,
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
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            scrollDirection: Axis.vertical,
            children: [
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('ind'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('indo'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('my'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('malay'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('en'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('inggris'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('jp'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('jepang'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('cn'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('china'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('hindi'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('india'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('rs'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('rusia'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('kr'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('korea'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('tr'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('turki'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('sp'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('spanyol'.tr),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(
                    Locale('br'),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('brazil'.tr),
                    trailing: Icon(Icons.more_vert),
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
