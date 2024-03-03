import 'package:flutter/material.dart';
import 'package:myappp/screens/drawer.dart';
import 'package:myappp/util/apps.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<Widget> items = [
//     // MyheaderDrawer(),
//     ListTile(
//       title: Text("Home"),
//       leading: Icon(Icons.home),
//       onTap: () {
//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => HomeScreen(),
//         //   ),
//         // );
//       },
//     ),
//     ListTile(
//       title: Text("GSM Tools"),
//       leading: Icon(Icons.home),
//       onTap: () {},
//     ),
//     ListTile(
//       title: Text("PC Tools"),
//       leading: Icon(Icons.home),
//       onTap: () {},
//     )
//   ];

//   // Track the tapped item index and its corresponding color
//   int tappedIndex = -1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("my app"),
//       ),
//       drawer: NavDrawer(),
//       // drawer: Drawer(
//       //   child: Container(
//       //     // padding: EdgeInsets.all(10),
//       //     child: ListView(children: items
//       //         // itemCount: items.length,
//       //         // itemBuilder: (BuildContext context, int index) {
//       //         //   return ListTile(
//       //         //     leading: Icon(
//       //         //       Icons.circle,
//       //         //       color: tappedIndex == index ? Colors.blue : null,
//       //         //     ),
//       //         //     title: Text(),
//       //         //     subtitle: Text('Subtitle ${index + 1}'),
//       //         //     trailing: const Icon(Icons.arrow_forward),
//       //         //     onTap: () {
//       //         //       // Update the tapped item index
//       //         //       setState(() {
//       //         //         tappedIndex = index;
//       //         //       });
//       //         //     },
//       //         //   );
//       //         // },
//       //         ),
//       //   ),
//       // ),
//       body: Center(
//         child: Text("we"),
//       ),
//     );
//   }
// }

class PcTweaks extends StatefulWidget {
  const PcTweaks({super.key});

  @override
  State<PcTweaks> createState() => _PcTweaksState();
}

class _PcTweaksState extends State<PcTweaks> {
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
    ["ApkShellExt2", "assets/unk.png", 'https://t.me/hodifa_almosa/2486'],
    [
      "Chimera Tool",
      "assets/chimera.png",
      'https://chimeratool.com/downloads/latest'
    ],
    ["Telegram", "assets/telegram.png", 'https://desktop.telegram.org/'],

    [
      "KMS VL ALL AIO",
      "assets/unk.png",
      'https://github.com/abbodi1406/KMS_VL_ALL_AIO/releases/download/v0.51.0/KMS_VL_ALL_AIO-51.7z'
    ],
    ["Win Aero Tweaker", "assets/winaero.png", 'https://winaerotweaker.com/'],
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
                  "Pc Tools",
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
