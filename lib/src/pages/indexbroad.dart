

import 'dart:async';

import 'package:agora_flutter_quickstart/src/pages/call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'audience.dart';

class IndexBroadcast extends StatefulWidget{
  @override
  _IndexBroadcastState createState() {
    return _IndexBroadcastState();
  }
}

class _IndexBroadcastState extends State<IndexBroadcast>{
  String channelUID;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Channel UID"
              ),
              onChanged: (val) {
                setState(() {
                  channelUID = val;
                });
              }
              ),
            FlatButton(
              child: Text("Join Channel"),
              onPressed: onWatch,
            ),
            FlatButton(
              child: Text("Start live"),
              onPressed: onJoin,
            ),
          ],
        )
      ),
    );
  }

  Future<void> onJoin() async {
    // update input validation
      // await for camera and mic permissions before pushing video page
      await _handleCameraAndMic();
      // push video page with given channel name
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(
            channelName: channelUID,
          ),
        ),
      );
  }

  Future<void> onWatch() async {
      // push video page with given channel name
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AudiencePage(
            channelName: channelUID,
          ),
        ),
      );
  }

    Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}