import 'package:flutter/material.dart';
import 'package:myappp/screens/drawer.dart';

import 'package:myappp/util/apps.dart';

class PcTools extends StatefulWidget {
  const PcTools({super.key});

  @override
  State<PcTools> createState() => _PcToolsState();
}

class _PcToolsState extends State<PcTools> {
  // final VideoPlayerController videoPlayerController =
  //     VideoPlayerController.asset("assets/w.mp4");
  // ChewieController? chewieController;

  final double hortPadding = 40.0;
  final double vertPadding = 25;

  // @override
  // void initState() {
  //   chewieController = ChewieController(
  //     videoPlayerController: videoPlayerController,
  //   );
  //   // chewieController = ChewieController(
  //   //     videoPlayerController: VideoPlayerController.asset("assets/w.mp4"),
  //   //     autoPlay: true,
  //   //     looping: true,
  //   //     autoInitialize: true,
  //   //     showControls: false);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   videoPlayerController.dispose();
  //   chewieController!.dispose();
  //   super.dispose();
  // }

// list of apps
  List myApps = [
    //[app name, icon path,postat]
    ["7zip zstd", "assets/7zip.png", 'https://t.me/hodifa_almosa/2391'],
    ["AnyDesk", "assets/anydesk.png", 'https://t.me/hodifa_almosa/2479'],
    ["Cloud Warp DNS", "assets/cloud.png", 'https://t.me/hodifa_almosa/2343'],
    [
      "Driver Booster",
      "assets/driverbooster.png",
      'https://t.me/hodifa_almosa/2346'
    ],
    ["Hdd Sentinel", "assets/hdd.png", 'https://t.me/hodifa_almosa/2345'],

    ["IDM", "assets/idm.png", 'https://t.me/hodifa_almosa/2345'],
    ["Proton Vpn", "assets/proton.png", 'https://t.me/hodifa_almosa/2334'],
    ["Radmin Vpn", "assets/radmin.png", 'https://t.me/hodifa_almosa/2515'],
    ["Team Viewr", "assets/tv.png", 'https://t.me/hodifa_almosa/2462'],
    ["Telegram", "assets/telegram.png", 'https://desktop.telegram.org/'],

    ["Ultra Viewer", "assets/unk.png", 'https://t.me/hodifa_almosa/2480'],
    ["Wifi Hotspot baidu", "assets/unk.png", 'https://t.me/hodifa_almosa/2337'],
    ["Winrar", "assets/winrar.png", 'https://www.rarlab.com/download.htm'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(49, 104, 233, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(49, 104, 233, 1),
          // title: Text(
          //   "Pc Tools",
          //   style: TextStyle(color: Color.fromARGB(255, 181, 215, 243)),
          // ),
        ),
        drawer: NavDrawer(),
        // drawer: Drawer(
        //   child: Container(
        //     // padding: EdgeInsets.all(10),
        //     child: ListView(children: items
        //         // itemCount: items.length,
        //         // itemBuilder: (BuildContext context, int index) {
        //         //   return ListTile(
        //         //     leading: Icon(
        //         //       Icons.circle,
        //         //       color: tappedIndex == index ? Colors.blue : null,
        //         //     ),
        //         //     title: Text(),
        //         //     subtitle: Text('Subtitle ${index + 1}'),
        //         //     trailing: const Icon(Icons.arrow_forward),
        //         //     onTap: () {
        //         //       // Update the tapped item index
        //         //       setState(() {
        //         //         tappedIndex = index;
        //         //       });
        //         //     },
        //         //   );
        //         // },
        //         ),
        //   ),
        // ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: hortPadding),
                child: Text(
                  "PC Tools",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: myApps.length,
                    // padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(0),
                          child: Apps(
                            apname: myApps[index][0],
                            icpath: myApps[index][1],
                            pst: myApps[index][2],
                          ));
                    }),
              )
            ],
          ),
        ]));
  }
}
