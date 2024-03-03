import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Apps extends StatelessWidget {
  final String apname;
  final String icpath;
  final String pst;

  const Apps(
      {super.key,
      required this.apname,
      required this.icpath,
      required this.pst});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(150),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //icon
          Image.asset(
            icpath,
            height: 150,
            width: 150,
          ),
          SizedBox(
            height: 45,
          ), //   apname,
          //   style: TextStyle(fontSize: 20),
          // ),
          TextButton(
            onPressed: _launchURL,
            child: Text(
              apname,
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    var url = pst;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
