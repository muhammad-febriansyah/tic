import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tic/app/data/models/wisata.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';
import 'package:url_launcher/url_launcher.dart';

class InfotourView extends GetView {
  final Wisata wisata = Get.arguments;
  final money = NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                      baseUrl.imgUrl + wisata.image,
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
                height: 320.h,
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
                      // ...
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("tarif".tr),
                                const Spacer(),
                                Text("Rp. ${money.format(
                                  int.parse(wisata.tarif.toString()),
                                )}"),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("tipe".tr),
                                const Spacer(),
                                Text(wisata.jenisUsaha),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("cp".tr),
                                const Spacer(),
                                Text(wisata.wa),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("kec".tr),
                                const Spacer(),
                                Text(wisata.kecamatan.kecamatan),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("kabupaten".tr),
                                const Spacer(),
                                Text(wisata.kabupaten.kabupaten),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("lokasi".tr),
                                const Spacer(),
                                Text(wisata.lokasi),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("views".tr),
                                const Spacer(),
                                Text("${wisata.views} views"),
                              ],
                            ),
                            const Divider(color: Colors.black),
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
                height: 550.h,
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
                        wisata.nama,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        wisata.desc,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      // SizedBox(
                      //   height: 20.h,
                      // ),
                      Spacer(),
                      SizedBox(
                        width: width,
                        height: height * 0.05,
                        child: ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                                'whatsapp://send?text=Hello ${wisata.nama}&phone=${wisata.wa}');
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
                            backgroundColor: ijoClr,
                          ),
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
                              Text(
                                "cp".tr,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
