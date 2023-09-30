import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parth_savaliya_demo2/ulitis/Apihelper.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    Apihelper.helper.Getdata();
  }
  @override
    Widget build(BuildContext context) {
    var data;
      return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 50.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Ocean Meteach",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                        data!.sort(
                              (a, b) => a.name!.toUpperCase().compareTo(
                            b.name!.toUpperCase(),
                          ),
                        );
                        Get.back();
                        setState(() {});
                      },
                      child: Text(
                        "A To Z",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        data!.sort(
                              (a, b) => a.price!.compareTo(b.price!),
                        );
                        Get.back();
                        setState(() {});
                      },
                      child: Text(
                        "Prize Minimum To Maximum",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        data!.sort(
                              (a, b) => b.price!.compareTo(a.price!),
                        );
                        Get.back();
                        setState(() {});
                      },
                      child: Text(
                        "Prize Maximum To Minimum",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        data!.sort(
                              (a, b) => b.name!.toLowerCase().compareTo(
                            b.name!.toLowerCase(),
                          ),
                        );
                        Get.back();
                        setState(() {});
                      },
                      child: Text(
                        "Z To A",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10.sp),
                      child: Row(
                        children: [
                          Container(
                            height: 120.sp,
                            width: 90.sp,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "${data![index].image}",
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20.sp,
                                width: 150.sp,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  data![index].name == null
                                      ? ""
                                      : "${data![index].name}",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.sp),
                              Container(
                                height: 20.sp,
                                width: 180.sp,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  data![index].categoryName == null
                                      ? ""
                                      : "CategoryName:- ${data![index].categoryName}",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.sp),
                              Container(
                                height: 20.sp,
                                width: 180.sp,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  data![index].id == null
                                      ? ""
                                      : "Price :- ${data![index].id}",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.sp),
                              Container(
                                height: 20.sp,
                                width: 180.sp,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  data![index].averageRating == null
                                      ? ""
                                      : "Rate :- ${data![index].averageRating}",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
