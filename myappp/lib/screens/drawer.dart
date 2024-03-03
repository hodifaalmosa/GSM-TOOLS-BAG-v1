import 'package:flutter/material.dart';
import 'package:myappp/screens/pc_tweaks.dart';
import 'package:myappp/screens/gsm_tools.dart';
import 'package:myappp/screens/pc_tools.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      child: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: <ListTile>[
              ListTile(
                title: Text("PC Tweaks"),
                leading: Icon(Icons.home),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PcTweaks())),
              ),
              ListTile(
                title: Text("GSM Tools"),
                leading: Icon(Icons.home),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GsmTools())),
              ),
              ListTile(
                title: Text("PC Tools"),
                leading: Icon(Icons.home),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PcTools())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
