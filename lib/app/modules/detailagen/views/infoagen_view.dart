import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tic/app/data/models/agen.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoagenView extends GetView {
  final AgenModel agenModel = Get.arguments;
  final money = NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

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
                      baseUrl.imgUrl + agenModel.image,
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
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.r,
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: (Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("cp".tr),
                                const Spacer(),
                                Text(agenModel.telp),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("harga".tr),
                                const Spacer(),
                                Text("Rp. ${money.format(
                                  int.parse(agenModel.harga.toString()),
                                )}"),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
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
                        agenModel.agen,
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
                          CustomTag(
                            backgrondColor: Colors.black,
                            children: [
                              const Icon(
                                Icons.remove_red_eye,
                                size: 17,
                                color: kWhiteclr,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "${agenModel.views} Views",
                                style: const TextStyle(
                                    fontSize: 17, color: kWhiteclr),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomTag(backgrondColor: Colors.black, children: [
                            const Icon(
                              CupertinoIcons.money_dollar,
                              size: 17,
                              color: kWhiteclr,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Rp. ${money.format(
                                int.parse(agenModel.harga.toString()),
                              )}",
                              style: const TextStyle(
                                  fontSize: 17, color: kWhiteclr),
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
                          Expanded(
                            child: Text(
                              agenModel.lokasi,
                              style: const TextStyle(
                                color: blueClr,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        agenModel.desc,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 190.w,
                            height: height * 0.05,
                            child: ElevatedButton(
                              onPressed: () async {
                                final Uri url = Uri.parse(
                                    'whatsapp://send?text=Hello ${agenModel.agen}&phone=${agenModel.telp}');
                                // ignore: no_leading_underscores_for_local_identifiers
                                Future<void> _launchUrl() async {
                                  if (!await launchUrl(url)) {
                                    throw 'Could not launch $url';
                                  }
                                }

                                _launchUrl();
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                  backgroundColor: ijoClr),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.phone,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
                                    "Contact Person",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 100.w,
                            height: height * 0.05,
                            child: ElevatedButton(
                              onPressed: () async {
                                final Uri url = Uri.parse(agenModel.url);
                                Future<void> _launchUrl() async {
                                  if (!await launchUrl(url)) {
                                    throw 'Could not launch $url';
                                  }
                                }

                                _launchUrl();
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                  backgroundColor: Colors.black),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    CupertinoIcons.globe,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
                                    "Url",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
