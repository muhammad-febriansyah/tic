import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/app/data/models/rm.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';

class InforestoView extends GetView {
  final RmModel rmModel = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                      baseUrl.imgUrl + rmModel.image,
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
                height: 900.h,
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
                        rmModel.nama,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTag(backgrondColor: Colors.black, children: [
                            Image(
                              image: const AssetImage("assets/open.png"),
                              fit: BoxFit.contain,
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              rmModel.buka,
                              style: const TextStyle(
                                  fontSize: 12, color: kWhiteclr),
                            ),
                          ]),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomTag(backgrondColor: Colors.black, children: [
                            Image(
                              image: const AssetImage("assets/close.png"),
                              fit: BoxFit.contain,
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              rmModel.tutup,
                              style: const TextStyle(
                                  fontSize: 12, color: kWhiteclr),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 18,
                            color: blueClr,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            rmModel.lokasi,
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
                      Text(
                        rmModel.desc,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                CupertinoIcons.tags,
                                color: kWhiteclr,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                rmModel.jenis,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: kWhiteclr,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
