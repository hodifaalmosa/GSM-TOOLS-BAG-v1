import 'package:flutter/material.dart';
import 'package:myappp/screens/drawer.dart';

import 'package:myappp/util/apps.dart';

class GsmTools extends StatefulWidget {
  const GsmTools({super.key});

  @override
  State<GsmTools> createState() => _GsmToolsState();
}

class _GsmToolsState extends State<GsmTools> {
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

    ["AfterSales", "assets/after.png", 'https://t.me/hodifa_almosa/2335'],
    [
      "Chimera Tool",
      "assets/chimera.png",
      'https://chimeratool.com/downloads/latest'
    ],

    ["Halabtech Tool", "assets/halab.png", 'https://t.me/hodifa_almosa/2331'],
    ["Iroot", "assets/unk.png", 'https://t.me/hodifa_almosa/2492'],
    [
      "Miracle Thunder Box",
      "assets/miracle.png",
      'https://t.me/hodifa_almosa/2332'
    ],
    ["Modem Meta", "assets/modem.png", 'https://t.me/hodifa_almosa/2461'],
    ["Muslim odin", "assets/unk.png", 'https://t.me/hodifa_almosa/2347'],
    ["Odin", "assets/odin.png", 'https://t.me/hodifa_almosa/2333'],
    ["SP Flash Tool", "assets/spfl.png", 'https://t.me/hodifa_almosa/2477'],
    ["SamFw Tool", "assets/samfw.png", 'https://t.me/hodifa_almosa/2460'],
    [
      "Samsung Smart Switch",
      "assets/smartsw.png",
      'https://t.me/hodifa_almosa/2481'
    ],
    ["Samsung kies2", "assets/kies.png", 'https://t.me/hodifa_almosa/2483'],

    ["Samsung kies3", "assets/kies.png", 'https://t.me/hodifa_almosa/2482'],
    ["Write Imei Tool", "assets/write.png", 'https://t.me/hodifa_almosa/2339'],
    [
      "Xiaomi flash tool",
      "assets/miflash.png",
      'https://t.me/hodifa_almosa/2507'
    ],
    [
      "Xiaomi Diag Tool without Root",
      "assets/unk.png",
      'https://t.me/hodifa_almosa/2455'
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(49, 104, 233, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(49, 104, 233, 1),
          // title: Text("Gsm Tools"),
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
                  "GSM Tools",
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
