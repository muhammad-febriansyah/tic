import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/app/routes/app_pages.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';

import '../controllers/transportasi_controller.dart';

class TransportasiView extends GetView<TransportasiController> {
  final controller = Get.put(TransportasiController());
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

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
                text: "transport".tr,
                style: TextStyle(
                  color: blueClr,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              TextSpan(
                text: "",
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
        child: Container(
          width: Get.width,
          height: Get.height,
          color: kWhiteclr,
          child: GetBuilder<TransportasiController>(
            builder: (controller) {
              if (controller.isLoading) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                );
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height * 0.8),
                ),
                itemCount: controller.data.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemBuilder: (BuildContext context, int index) {
                  final row = controller.data[index];
                  return InkWell(
                    onTap: () {
                      Get.toNamed(
                        Routes.DETAILTRANSPORTASI,
                        arguments: row,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.r,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              child: Image(
                                image: NetworkImage(
                                  baseUrl.imgUrl + row.image,
                                ),
                                fit: BoxFit.cover,
                                width: screenwidth * 0.5,
                                height: screenheight * 0.17,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                row.nama,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                row.desc,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
