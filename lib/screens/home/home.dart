import 'dart:async';
import 'dart:ui';

import 'package:ant_icons/ant_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:youtubeclone/screens/home/components/videolist.dart';

import 'components/side_navbar.dart';


class YoutubeHome extends StatefulWidget{
  const YoutubeHome({Key? key}) : super(key: key);


  @override
  YoutubeHomeState createState() =>  YoutubeHomeState();


}

class YoutubeHomeState extends State<YoutubeHome> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  bool menuExpand = true;
  bool menuExpandScreenEnable = true;
  String selectedButton = 'All';

  List<String> buttonList = [
    "Music",
    "Flutter",
    "Mixes",
    "Angular",
    "Java",
    "Computer programming",
    "Gaming",
    "Live",
    "Helth tips",
    "Files",
    "Website developers",
    "Electrical Enginereing",
    "Recently uploaded",
    "New to you",
    "Vollyball",
    "Cambat sports",
    "JavaScript",
    "Mobile phones",
    "Gadegts",
    "Trailers",
  ];

  late ScrollController _controller;
  String _controllerStatus = "left";

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _controllerStatus = "right";
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _controllerStatus = "left";
      });
    }
  }

  void _scrollTop() {
    _controller.animateTo(
      _controller.position.minScrollExtent,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInToLinear,
    );
  }

  void _scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInToLinear,
    );
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreen = currentWidth > 1175;
    var extraSmallScreen = currentWidth > 1025;
    var tabScreen = currentWidth > 769;

    var resTextfield = currentWidth > 1170;
    var logoWidth = currentWidth > 875;
    var hideTextFiled = currentWidth > 657;
    var hideMenu = currentWidth > 805;
    var resTextFieldWidth = currentWidth - 1170;

    var expandedWidth = menuExpand ? 240.0 : 72.0;
    var menuExpandScreen = currentWidth > 1330;
    menuExpandScreenEnable
        ? Timer.run(() {
      setState(() {
        menuExpandScreenEnable
            ? menuExpand = menuExpandScreen ? true : false
            : true;
      });
    })
        : Container();

    var resButtonContainer = menuExpand
        ? 240.0
        : currentWidth > 800
        ? 72.0
        : 0;
    var resButtonList = currentWidth > 800 ? 140.0 : 72.0;

    var gridPaddingLarge = currentWidth > 1790;
    var paddingWidth = 1920 - currentWidth;
    var resPaddingWidth = paddingWidth / 1.1;
    var remPaddingWidth = 80 - resPaddingWidth;
    var gridPaddingSmall = remPaddingWidth > 30 ? remPaddingWidth : 30;
    var gridPaddingExSmall = currentWidth > 650;

    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(0.04),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: hideMenu ? 16.0 : 07.5,
                    top: hideMenu ? 01.0 : 0.0,
                    right: 00.0),
                width: menuExpand
                    ? 240
                    : resTextfield
                    ? 213
                    : logoWidth
                    ? 211
                    : tabScreen
                    ? 195
                    : hideTextFiled
                    ? 211
                    : 211,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Row(
                      children: [
                        extraSmallScreen
                            ? Container(
                          padding: const EdgeInsets.only(
                              right: 11.0, bottom: 03.0),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50.0),
                            highlightColor:
                            Colors.black12.withOpacity(0.02),
                            onTap: () {
                              setState(() {
                                menuExpand = menuExpand ? false : true;
                                menuExpandScreenEnable = false;
                              });
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 09,
                                  top: 08,
                                  right: 09,
                                  bottom: 09),
                              child: Icon(
                                FeatherIcons.menu,
                                color: Colors.black,
                                size: 22.0,
                              ),
                            ),
                          ),
                        )
                            : Container(
                          padding: const EdgeInsets.only(right: 11.0),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50.0),
                            highlightColor:
                            Colors.black12.withOpacity(0.02),
                            onTap: () {
                              menuExpandScreen
                                  ? setState(() {
                                menuExpand =
                                menuExpand ? false : true;
                                menuExpandScreenEnable = false;
                              })
                                  : Container();
                              menuExpandScreen
                                  ? Container()
                                  : showMaterialModalBottomSheet(
                                expand: false,
                                enableDrag: false,
                                isDismissible: false,
                                barrierColor: Colors.transparent,
                                backgroundColor: Colors.transparent,
                                duration:
                                const Duration(seconds: 0),
                                elevation: 10.0,
                                context: context,
                                builder: (context) =>
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pop(false);
                                      },
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            width: 240.0,
                                            child: SideNavBar(),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height:
                                              MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 09,
                                  top: 08,
                                  right: 09,
                                  bottom: 09),
                              child: Icon(
                                EvaIcons.menu,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: hideMenu ? 0.0 : 02.0, bottom: 01.5),
                          child: Image.asset('assets/images/youtube_logo.jpg',
                              height: 30.0, width: 100.0),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: menuExpand
                              ? 64.0
                              : resTextfield
                              ? 38
                              : hideMenu
                              ? 35
                              : 40,
                          top: 06.0),
                      child: const Text(
                        'IN',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 09.0,
                          fontFamily: 'Roboto-Bold',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              hideTextFiled
                  ? Container(
                margin: const EdgeInsets.only(right: 06),
                padding:
                EdgeInsets.only(right: resTextfield ? 25.0 : 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.0,
                      alignment: Alignment.topLeft,
                      width: smallScreen
                          ? 575
                          : resTextfield
                          ? 573
                          : tabScreen
                          ? 573 + resTextFieldWidth
                          : 573 + resTextFieldWidth + 10,
                      child: const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 13.0, bottom: 10.0),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(02.0),
                                  bottomLeft: Radius.circular(02.0),
                                  topRight: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0)),
                              borderSide: BorderSide(
                                  color: Colors.indigo, width: 01.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(02.0),
                                  bottomLeft: Radius.circular(02.0),
                                  topRight: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0)),
                              borderSide: BorderSide(
                                  color: Colors.black26, width: 01.0),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16.0),
                            hintText: 'Search'),
                        style: TextStyle(
                            fontSize: 16.0, color: Colors.black87),
                      ),
                    ),
                    Tooltip(
                      message: 'Search',
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      child: InkWell(
                        onTap: () {},
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  color: Colors.black12, width: 1.0),
                              top: BorderSide(
                                  color: Colors.black12, width: 1.0),
                              right: BorderSide(
                                  color: Colors.black12, width: 1.0),
                              bottom: BorderSide(
                                  color: Colors.black12, width: 1.0),
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0.0),
                                bottomLeft: Radius.circular(0.0),
                                topRight: Radius.circular(02.0),
                                bottomRight: Radius.circular(02.0)),
                          ),
                          child: Container(
                            height: 40.0,
                            width: 62.0,
                            alignment: Alignment.center,
                            color: Colors.black12.withOpacity(0.03),
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, bottom: 02.0),
                            child: const Icon(
                              AntIcons.search_outline,
                              color: Colors.black,
                              size: 22.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 08.0),
                    Tooltip(
                      message: 'Search with your voice',
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50.0),
                        highlightColor: Colors.black12.withOpacity(0.02),
                        onTap: () {},
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.black12.withOpacity(0.03),
                          ),
                          child: Container(
                            height: 42.0,
                            width: 42.0,
                            padding: const EdgeInsets.only(
                                left: 8.0,
                                top: 4.0,
                                right: 8.0,
                                bottom: 4.0),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.mic,
                              color: Colors.black,
                              size: 22.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  : Container(),
              SizedBox(
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    hideTextFiled
                        ? Container()
                        : Container(
                      padding: const EdgeInsets.only(right: 05.0),
                      child: Tooltip(
                        message: 'Search',
                        textStyle: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        child: Container(
                          padding: const EdgeInsets.all(05.0),
                          child: const Icon(
                            AntIcons.search_outline,
                            size: 25.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    hideTextFiled
                        ? Container()
                        : Container(
                      padding: const EdgeInsets.only(right: 05.0),
                      child: Tooltip(
                        message: 'Search with your voice',
                        textStyle: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        child: Container(
                          padding: const EdgeInsets.all(05.0),
                          child: const Icon(
                            Icons.mic,
                            size: 25.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'Create',
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 2.0, right: hideTextFiled ? 08 : 05.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(09.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: const [
                                Padding(
                                  padding:
                                  EdgeInsets.only(right: 04, bottom: 1.0),
                                  child: Icon(
                                    FeatherIcons.plus,
                                    size: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  AntIcons.video_camera_outline,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'YouTube apps',
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      child: Container(
                        padding:
                        EdgeInsets.only(right: hideTextFiled ? 08 : 05.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Ionicons.apps_outline,
                              size: 21.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'Notifications',
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      child: Container(
                        padding:
                        EdgeInsets.only(right: hideTextFiled ? 08 : 05.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50.0),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(07.5),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: <Widget>[
                                const Icon(
                                  Ionicons.notifications_outline,
                                  size: 26.0,
                                  color: Colors.black,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    color: Colors.red,
                                    height: 14.0,
                                    padding: const EdgeInsets.only(
                                        left: 04.0, top: 2.0),
                                    child: const Text(
                                      '9+ ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10.0, right: hideTextFiled ? 40.0 : 25.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                            'assets/images/flutter.png',
                            fit: BoxFit.cover,
                            height: 35,
                            width: 35),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          hideMenu
              ? SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: expandedWidth,
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(top: menuExpand ? 12.0 : 05.0),
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      padding: EdgeInsets.only(
                          top: menuExpand ? 0.0 : 7.0,
                          bottom: menuExpand ? 0.0 : 10.0),
                      color: menuExpand
                          ? Colors.black12.withOpacity(0.1)
                          : Colors.transparent,
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
                              menuExpand
                                  ? Container(
                                padding: const EdgeInsets.only(
                                    left: 25.0, bottom: 02.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Home',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                          menuExpand
                              ? Container()
                              : InkWell(
                            onTap: () {},
                            child: Container(
                              padding:
                              const EdgeInsets.only(left: 23.0),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Home',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      padding: EdgeInsets.only(
                          top: menuExpand ? 0.0 : 10.0,
                          bottom: menuExpand ? 0.0 : 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 24.0,
                                    top: menuExpand ? 8 : 10.0,
                                    bottom: menuExpand ? 8 : 8.0),
                                alignment: Alignment.topLeft,
                                child: const Icon(Icons.explore_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding: const EdgeInsets.only(
                                    left: 24.0, bottom: 1.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Explore',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                          menuExpand
                              ? Container()
                              : Container(
                            padding:
                            const EdgeInsets.only(left: 20.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Explore',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 0.0),
                      padding: EdgeInsets.only(
                          top: menuExpand ? 0.0 : 10.0,
                          bottom: menuExpand ? 0.0 : 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 24.0, top: 8.0, bottom: 9.0),
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Icons.subscriptions_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding: const EdgeInsets.only(
                                    left: 24.0, bottom: 02.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Subscriptions',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                          menuExpand
                              ? Container()
                              : Container(
                            padding: const EdgeInsets.only(
                                left: 05.0, bottom: 0.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Subscriptions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  menuExpand
                      ? Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    padding: const EdgeInsets.only(
                        top: 11.0, bottom: 05.0),
                    child: Container(
                      width: currentWidth,
                      height: 1.0,
                      color: Colors.black12.withOpacity(0.1),
                    ),
                  )
                      : Container(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      padding: EdgeInsets.only(
                          top: menuExpand ? 0.0 : 07.0,
                          bottom: menuExpand ? 0.0 : 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 24.0, top: 12.0, bottom: 9.0),
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Icons.video_library_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding: const EdgeInsets.only(
                                    left: 25.0, top: 0.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Library',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                          menuExpand
                              ? Container()
                              : Container(
                            padding: const EdgeInsets.only(
                                left: 21.0, top: 0.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Library',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      padding: EdgeInsets.only(
                          top: menuExpand ? 0.0 : 07.0,
                          bottom: menuExpand ? 0.0 : 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 21.0,
                                    top: menuExpand ? 3.0 : 12.0,
                                    bottom: menuExpand ? 9.0 : 05.0),
                                alignment: Alignment.topLeft,
                                child: const Icon(Icons.history_outlined,
                                    size: 29.0),
                              ),
                              menuExpand
                                  ? Container(
                                padding: const EdgeInsets.only(
                                    left: 22.0, bottom: 07.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'History',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                          menuExpand
                              ? Container()
                              : Container(
                            padding:
                            const EdgeInsets.only(left: 20.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'History',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  menuExpand
                      ? Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 24.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Icons.video_library_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 05.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Watch later',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 24.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    AntIcons.like_outline),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Liked videos',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      menuExpand
                          ? Container(
                        margin: const EdgeInsets.only(
                            right: 15.0),
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0),
                        child: Container(
                          width: currentWidth,
                          height: 1.0,
                          color:
                          Colors.black12.withOpacity(0.1),
                        ),
                      )
                          : Container(),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        padding: const EdgeInsets.only(
                            left: 25.0, top: 08.0, bottom: 08.0),
                        color: Colors.white,
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'SUBSCRITIONS',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Material(
                                color: Colors.black87,
                                borderRadius:
                                BorderRadius.circular(50.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                  const EdgeInsets.all(05.0),
                                  child: const Icon(
                                    EvaIcons.music,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 20.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Music',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Material(
                                color: Colors.black87,
                                borderRadius:
                                BorderRadius.circular(50.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                  const EdgeInsets.all(05.0),
                                  child: const Icon(
                                    AntIcons.trophy,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 20.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Sports',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Material(
                                color: Colors.black87,
                                borderRadius:
                                BorderRadius.circular(50.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                  const EdgeInsets.all(05.0),
                                  child: const Icon(
                                    Icons.local_library,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 20.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Gaming',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Material(
                                color: Colors.black87,
                                borderRadius:
                                BorderRadius.circular(50.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                  const EdgeInsets.all(05.0),
                                  child: const Icon(
                                    EvaIcons.film,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 20.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Movies',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      menuExpand
                          ? Container(
                        margin: const EdgeInsets.only(
                            right: 15.0),
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0),
                        child: Container(
                          width: currentWidth,
                          height: 1.0,
                          color:
                          Colors.black12.withOpacity(0.1),
                        ),
                      )
                          : Container(),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 25.0, top: 08.0, bottom: 08.0),
                        color: Colors.white,
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'MORE FROM YOUTUBE',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    AntIcons.youtube_outline),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Youtube Premium',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
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
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Movies',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(Ionicons
                                    .game_controller_outline),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Gaming',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 27.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Ionicons.radio_outline,
                                    size: 22.0),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Live',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Ionicons.shirt_outline,
                                    size: 22.0),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Fashion & Beauty',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    AntIcons.bulb_outline),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Learing',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
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
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Sports',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      menuExpand
                          ? Container(
                        margin: const EdgeInsets.only(
                            right: 15.0),
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0),
                        child: Container(
                          width: currentWidth,
                          height: 1.0,
                          color:
                          Colors.black12.withOpacity(0.1),
                        ),
                      )
                          : Container(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Icons.settings_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child:
                                const Icon(Icons.flag_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Report history',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
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
                                child:
                                const Icon(Icons.info_outline),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Help',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                          const EdgeInsets.only(right: 15.0),
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 08.0, bottom: 08.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                    Icons.feedback_outlined),
                              ),
                              menuExpand
                                  ? Container(
                                padding:
                                const EdgeInsets.only(
                                    left: 25.0,
                                    top: 03.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Send feedback',
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                      : Container(),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          )
              : Container(),
          SizedBox(
            width: MediaQuery.of(context).size.width - resButtonContainer,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - expandedWidth,
                    height: 0.2,
                    color: Colors.black45.withOpacity(0.5),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: hideMenu ? 0.0 : 02.0,
                        top: hideMenu ? 0.0 : 02.0,
                        right: 15.0),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _controllerStatus == 'right'
                            ? Container(
                          height: 32.0,
                          width: 45.0,
                          padding: const EdgeInsets.only(left: 10.0),
                          alignment: Alignment.center,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50.0),
                            onTap: () {
                              _scrollTop();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(04.0),
                              child: Icon(
                                Icons.chevron_left_outlined,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        )
                            : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedButton = 'All';
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: hideMenu ? 30.0 : 22.0, right: 5.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black12, width: 1.0),
                                borderRadius: BorderRadius.circular(50.0),
                                color: selectedButton == 'All'
                                    ? Colors.black
                                    : Colors.black12.withOpacity(0.05),
                              ),
                              child: Container(
                                height: 32.0,
                                padding: const EdgeInsets.only(
                                    left: 13.0, right: 13.0),
                                alignment: Alignment.center,
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Roboto-Regular',
                                    color: selectedButton == 'All'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 30.0,
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 12.0, right: 0.0, bottom: 12.0),
                          width: currentWidth - expandedWidth - resButtonList,
                          alignment: Alignment.topLeft,
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(
                              dragDevices: {
                                PointerDeviceKind.touch,
                                PointerDeviceKind.mouse,
                              },
                            ),
                            child: ListView.builder(
                                itemCount: buttonList.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                controller: _controller,
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  var button = buttonList;
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedButton = button[index];
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 5.0),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black12,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(50.0),
                                          color: selectedButton == button[index]
                                              ? Colors.black
                                              : Colors.black12
                                              .withOpacity(0.05),
                                        ),
                                        child: Container(
                                          height: 32.0,
                                          padding: const EdgeInsets.only(
                                              left: 13.0, right: 13.0),
                                          alignment: Alignment.center,
                                          child: Text(
                                            button[index],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'Roboto-Regular',
                                              color: selectedButton ==
                                                  button[index]
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 45.0,
                          alignment: Alignment.center,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50.0),
                            onTap: () {
                              _scrollDown();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(04.0),
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - expandedWidth,
                    height: 0.2,
                    color: Colors.black45.withOpacity(0.5),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width - expandedWidth,
                      alignment: Alignment.topRight,
                      child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: 20,
                          padding: EdgeInsets.only(
                              left: gridPaddingLarge
                                  ? gridPaddingSmall + 10
                                  : gridPaddingExSmall
                                  ? 25
                                  : 45,
                              top: 20.0,
                              right: gridPaddingLarge
                                  ? gridPaddingSmall + 20
                                  : gridPaddingExSmall
                                  ? 25
                                  : 60,
                             bottom: 150.0),
                          gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 400,
                              mainAxisExtent: 310,
                              crossAxisSpacing: 15.0,
                              mainAxisSpacing: 15.0),
                          itemBuilder: (BuildContext context, int index) {
                            return const VideoList();
                          }),
                    ),
                  ),
                  const SizedBox(height:100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}