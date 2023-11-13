import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tic/app/data/models/money.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';
import 'package:url_launcher/url_launcher.dart';

class InfomoneychangerView extends GetView {
  final MoneyChanger moneyChanger = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            Container(
              width: double.infinity,
              height: 1000.h,
              color: kWhiteclr,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            baseUrl.imgUrl + moneyChanger.image,
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
                      height: 700.h,
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
                              moneyChanger.nama,
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
                                  Icons.location_on,
                                  size: 18,
                                  color: blueClr,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  moneyChanger.lokasi,
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
                              moneyChanger.ket,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                            // SizedBox(
                            //   height: 10.h,
                            // ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTag(
                                    backgrondColor: Colors.black,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.tags,
                                        color: kWhiteclr,
                                        size: 17,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        moneyChanger.kurs,
                                        style: const TextStyle(
                                            fontSize: 17, color: kWhiteclr),
                                      ),
                                    ]),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomTag(
                                  backgrondColor: Colors.transparent,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () async {
                                        final Uri url = Uri.parse(
                                            'whatsapp://send?text=Hello ${moneyChanger.nama}&phone=${moneyChanger.telp}');
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
                                            borderRadius:
                                                BorderRadius.circular(15.r),
                                          ),
                                          backgroundColor: Colors.green),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.phone,
                                            size: 17,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          const Text(
                                            "Contact Person",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
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
          ],
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
