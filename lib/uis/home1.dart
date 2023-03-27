import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen1 extends StatefulWidget {
  const HomePageScreen1({super.key});

  @override
  State<HomePageScreen1> createState() => _HomePageScreen1State();
}

class _HomePageScreen1State extends State<HomePageScreen1> {
  int pageIndex = 0;
  List<String> _listImages = [
    "assets/images/Herobanner.png",
    "assets/images/Image.png",
    "assets/images/Image.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _topBannerAndBody(context),
          _recentSearch(context),
          SizedBox(
            height: 16.h,
          ),
          _listRecentSearch(context),
          SizedBox(
            height: 12.h,
          ),
          _textTitle(context, "Ưu đãi"),
          SizedBox(
            height: 12.h,
          ),
          _promotionImageSlider(context),
          SizedBox(
            height: 8.h,
          ),
          _textTitle(context, "Điểm đến phổ biến"),
          SizedBox(
            height: 12.h,
          ),
          _listMostAttractive(context),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }

  Widget _topBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: 360.w,
      // height: MediaQuery.of(context).size.height * 0.2,
      height: 120.h,

      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Herobanner.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 216.w,
            height: 27.h,
            child: Text(
              "Logo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // IconButton(
          //   hoverColor: Color.fromARGB(255, 0, 0, 0),
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.blueAccent,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Row(
          //     children: [],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _blankSpace(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 360.w,
          height: 362.h,
        ),
      ],
    );
  }

  Widget _topBannerAndBody(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 360.w,
          height: 482.h,
          child: Column(
            children: [
              _topBanner(context),
              _blankSpace(context),
            ],
          ),
        ),
        _searchFilter(context),
      ],
    );
  }

  Widget _searchFilter(BuildContext context) {
    return Positioned.fill(
      top: 104.h,
      child: Container(
        margin: EdgeInsets.only(left: 16.w, right: 16.w),
        padding: EdgeInsets.all(16.w),
        width: 328.w,
        height: 378.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: Column(
          children: [
            _searchFilterDesAndHotel(context),
            _searchFilterCheckinDate(context),
            _seatchFilteRoomAndGuest(context),
            _searchFilterFilter(context),
            SizedBox(
              height: 16.h,
            ),
            _searchFilterSearchButton(context)
          ],
        ),
      ),
    );
  }

  Widget _searchFilterDesAndHotel(BuildContext context) {
    return Container(
      width: 296.w,
      height: 54.h,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
        // color: Colors.grey,
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 16.w,
          ),
          SizedBox(
            width: 12.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 250.w,
                height: 21.h,
                child: Text(
                  "Điểm đến, khách sạn",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                width: 250.w,
                height: 21.w,
                child: Text(
                  "Please select your destination",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
            ],
          ),
          Icon(
            Icons.my_location_outlined,
            size: 16.w,
          )
        ],
      ),
    );
  }

  Widget _searchFilterCheckinDate(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.h),
      width: 296.w,
      height: 96.h,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_month_outlined,
            size: 16.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 165.w,
                height: 21.h,
                child: Text(
                  "Check_in date",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                width: 165.w,
                height: 21.h,
                child: Text(
                  "wed, 2 Fed 2022",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 92.w,
                    height: 16.h,
                    child: Text(
                      "Ngày trả phòng",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  Text(
                    "Thu, 3 Feb 2022",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Duration",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "2 nights",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _seatchFilteRoomAndGuest(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.meeting_room_outlined,
            size: 20.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Số phòng và khách",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "1 phòng, 1 người lớn",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _searchFilterFilter(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_alt_off_outlined,
            size: 20.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Filter",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                "Filter your search",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _searchFilterSearchButton(BuildContext context) {
    return SizedBox(
      width: 296.w,
      height: 40.h,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "search",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _recentSearch(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 320.w,
      height: 24.h,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Tra cứu gần đây",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            GestureDetector(
                onTap: () {},
                child: const Text(
                  "Xóa",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }

  Widget _listRecentSearch(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 360.w,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              SizedBox(
                width: 260.w,
                height: 80.h,
                child: Row(
                  children: [
                    Icon(
                      Icons.home_work_outlined,
                      color: Colors.blue,
                      size: 16.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 196.w,
                          height: 21.h,
                          child: const Text(
                            "Khách sạn Pullman Vũng Tàu ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "02/02/2022 - 04/02/2022",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 128, 128, 137)),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "2 phòng, 2 người lớn, 1 trẻ em",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 128, 128, 137)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              SizedBox(
                width: 260.w,
                height: 80.h,
                child: Row(
                  children: [
                    Icon(
                      Icons.home_work_outlined,
                      color: Colors.blue,
                      size: 16.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 196.w,
                          height: 21.h,
                          child: const Text(
                            "Khách sạn Pullman Vũng Tàu ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "02/02/2022 - 04/02/2022",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 128, 128, 137)),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "2 phòng, 2 người lớn, 1 trẻ em",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 128, 128, 137)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _textTitle(BuildContext context, title) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
        ),
      ),
    );
  }

  Widget _promotionImageSlider(BuildContext context) {
    return SizedBox(
      height: 140.h,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              height: 110.h,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
            itemCount: _listImages.length,
            itemBuilder: (context, index, a) {
              // final firstImage = _listImages[index];

              return Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Image.asset(
                  _listImages[index],
                  width: 328.w,
                  height: 109.h,
                  fit: BoxFit.fill,
                ),
              );
            },
          ),
          CarouselIndicator(
            activeColor: Colors.blue,
            color: Colors.grey,
            count: _listImages.length,
            index: pageIndex,
          ),
        ],
      ),
    );
  }

  Widget _listMostAttractive(BuildContext context) {
    return SizedBox(
      width: 320.w,
      height: 171.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 8.w,
          ),
          _commonPlace(context),
          _commonPlace(context),
          _commonPlace(context),
          SizedBox(
            width: 8.w,
          ),
        ],
      ),
    );
  }

  Widget _commonPlace(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Stack(
        children: [
          Container(
            width: 128.w,
            height: 171.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  image: AssetImage("assets/images/Image1.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [Colors.blue, Colors.transparent]),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.w, bottom: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Tên điểm đến",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "1000+ khách sạn",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
