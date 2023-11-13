import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tic/app/data/models/rental.dart';
import 'package:tic/color.dart';
import 'package:tic/url.dart';
import 'package:url_launcher/url_launcher.dart';

class InforentalView extends GetView {
  final RentalModel rentalModel = Get.arguments;
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
                      baseUrl.imgUrl + rentalModel.image,
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
                height: 190.h,
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
                                Text("pemilik".tr),
                                const Spacer(),
                                Text(rentalModel.pemilik),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("sewa".tr),
                                const Spacer(),
                                Text("Rp. ${money.format(
                                  int.parse(rentalModel.hargaSewa.toString()),
                                )}"),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text("telp".tr),
                                const Spacer(),
                                Text(rentalModel.telp),
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
                                Text(rentalModel.jenis),
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
                        rentalModel.nama,
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
                          Expanded(
                            child: Text(
                              rentalModel.lokasi,
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
                        rentalModel.desc,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: width,
                        height: height * 0.05,
                        child: ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                                'whatsapp://send?text=Hello ${rentalModel.nama}&phone=${rentalModel.telp}');
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
