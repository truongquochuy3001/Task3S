import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int pageIndex = 0;
  List<String> _listImages = [
    "assets/images/Herobanner.png",
    "assets/images/Image.png",
    "assets/images/Image.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _topBannerAndBody(context),
            const SizedBox(
              height: 10,
            ),
            _recentSearch(context),
            const SizedBox(
              height: 10,
            ),
            _listRecentSearch(context),
            const SizedBox(
              height: 10,
            ),
            _textTitle(context, "Ưu đãi"),
            _promotionImageSlider(context),
            _textTitle(context, "Điểm đến phổ biến"),
            const SizedBox(
              height: 10,
            ),
            _listMostAttractive(context),
          ],
        ),
      ),
    );
  }

  Widget _topBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
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
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Text(
              "Logo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            hoverColor: Color.fromARGB(255, 0, 0, 0),
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [],
            ),
          ),
        ],
      ),
    );
  }

  Widget _blankSpace(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5),
      ],
    );
  }

  Widget _topBannerAndBody(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
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
      top: MediaQuery.of(context).size.height * 0.18,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: ListView(
          children: [
            _searchFilterDesAndHotel(context),
            _searchFilterCheckinDate(context),
            _seatchFilteRoomAndGuest(context),
            _searchFilterFilter(context),
            const SizedBox(
              height: 5,
            ),
            _searchFilterSearchButton(context)
          ],
        ),
      ),
    );
  }

  Widget _searchFilterDesAndHotel(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on_outlined)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Destination or hotel",
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Please select your destination",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.my_location_outlined),
          ),
        ],
      ),
    );
  }

  Widget _searchFilterCheckinDate(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.calendar_month_outlined),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Check_in date"),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "wed, 2 Fed 2022",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Check_out date",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Thu, 3 Feb 2022",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("Duration"),
              SizedBox(
                height: 5,
              ),
              Text(
                "2 nights",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.meeting_room_outlined),
          ),
          Column(
            children: const [
              Text("Room & guest"),
              Text(
                "1 room, 1 adult",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _searchFilterFilter(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Filter"),
              Text(
                "Filter your search",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _searchFilterSearchButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "search",
              style: TextStyle(fontSize: 16),
            )),
      ),
    );
  }

  Widget _recentSearch(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    const Icon(
                      Icons.home_work_outlined,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const Text(
                            "Khách sạn Pullman Vũng Tàu ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("02/02/2022 - 04/02/2022"),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("2 phòng, 2 người lớn, 1 trẻ em"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    const Icon(
                      Icons.home_work_outlined,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: const Text(
                            "Khách sạn Pullman Vũng Tàu ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("02/02/2022 - 04/02/2022"),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("2 phòng, 2 người lớn, 1 trẻ em"),
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
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

  Widget _promotionImageSlider(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              height: MediaQuery.of(context).size.height * 0.2,
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
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Image.asset(_listImages[index]),
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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Image1.png")),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Image1.png")),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Image1.png")),
            ),
          )
        ],
      ),
    );
  }
}
