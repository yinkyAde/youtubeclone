import 'package:ant_icons/ant_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  _SideNavBarState createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraSmallScreen = currentWidth > 1025;
    var expandedWidth = 240.0;
    return Container(
      width: 240.0,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: expandedWidth,
          color: Colors.white10,
          alignment: Alignment.topLeft,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 12.0),
            children: [
              Container(
                padding: const EdgeInsets.only(left: 25.0, top: 0.5, right: 0.0),
                width: 240.0,
                child: Row(
                  children: [
                    extraSmallScreen
                        ? Container(
                      padding: const EdgeInsets.only(right: 20.0, bottom: 3.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          FeatherIcons.menu,
                          color: Colors.black,
                          size: 22.0,
                        ),
                      ),
                    )
                        : Container(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          FeatherIcons.menu,
                          color: Colors.black,
                          size: 22.0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/youtube_logo.jpg',
                          height: 30.0,
                          width: 100.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  color: Colors.black12.withOpacity(0.1),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.only(
                                  left: 25.0, top: 9.0, bottom: 9.0),
                              alignment: Alignment.topLeft,
                              child: Image.asset('assets/images/home.png',
                                  height: 22.0, width: 22.0)),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, bottom: 02.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Home',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding:
                            const EdgeInsets.only(left: 24.0, top: 8, bottom: 8),
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.explore_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 24.0, bottom: 1.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Explore',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 0.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 24.0, top: 8.0, bottom: 9.0),
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.subscriptions_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 24.0, bottom: 02.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Subscriptions',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15.0),
                padding: const EdgeInsets.only(top: 11.0, bottom: 05.0),
                child: Container(
                  width: currentWidth,
                  height: 1.0,
                  color: Colors.black12.withOpacity(0.1),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 24.0, top: 12.0, bottom: 9.0),
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.video_library_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 0.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Library',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 21.0, top: 3.0, bottom: 9.0),
                            alignment: Alignment.topLeft,
                            child:
                            const Icon(Icons.history_outlined, size: 29.0),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 22.0, bottom: 07.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'History',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 24.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.video_library_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 05.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Watch later',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 24.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(AntIcons.like_outline),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Liked videos',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Container(
                      width: currentWidth,
                      height: 1.0,
                      color: Colors.black12.withOpacity(0.1),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 08.0, bottom: 08.0),
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'SUBSCRITIONS',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(05.0),
                              child: const Icon(
                                EvaIcons.music,
                                size: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 20.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Music',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(05.0),
                              child: const Icon(
                                AntIcons.trophy,
                                size: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 20.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Sports',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(05.0),
                              child: const Icon(
                                Icons.local_library,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 20.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Gaming',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(05.0),
                              child: const Icon(
                                EvaIcons.film,
                                size: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 20.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Movies',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Container(
                      width: currentWidth,
                      height: 1.0,
                      color: Colors.black12.withOpacity(0.1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 08.0, bottom: 08.0),
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'MORE FROM YOUTUBE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(AntIcons.youtube_outline),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Youtube Premium',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(
                              EvaIcons.filmOutline,
                            ),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Movies',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Ionicons.game_controller_outline),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Gaming',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 27.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child:
                            const Icon(Ionicons.radio_outline, size: 22.0),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Live',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child:
                            const Icon(Ionicons.shirt_outline, size: 22.0),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Fashion & Beauty',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(AntIcons.bulb_outline),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Learing',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(
                              AntIcons.trophy_outline,
                            ),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Sports',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Container(
                      width: currentWidth,
                      height: 1.0,
                      color: Colors.black12.withOpacity(0.1),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.settings_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Settings',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.flag_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Report history',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.info_outline),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Help',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 08.0, bottom: 08.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.feedback_outlined),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.only(left: 25.0, top: 03.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Send feedback',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}