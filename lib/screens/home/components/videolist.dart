import 'package:flutter/material.dart';

class VideoList extends StatelessWidget{

  const VideoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 0, right: 0),
              child: Image.asset('assets/images/flutter.png',
                  fit: BoxFit.fitWidth),
            ),
            Container(
              height: 17.0,
              width: 40.0,
              color: Colors.black87.withOpacity(0.8),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 05.0, bottom: 05.0),
              child: const Text(
                "00:00",
                style: TextStyle(color: Colors.white, fontSize: 13.0),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 95.0,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset('assets/images/flutter.png',
                    fit: BoxFit.fill, height: 40, width: 40),
              ),
              Container(
                height: 95.0,
                margin: const EdgeInsets.only(left: 08),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Youtube",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 03.0),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 40,
                      ),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Channel Name",
                        style:  TextStyle(
                            fontSize: 15.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 03.0),
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          const Text(
                            'views',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding:
                            const EdgeInsets.only(left: 05.0, right: 05.0),
                            child: const Icon(
                              Icons.brightness_1,
                              size: 2.5,
                            ),
                          ),
                          const Text(
                            'two days ago',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}