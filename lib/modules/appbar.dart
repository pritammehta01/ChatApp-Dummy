import 'package:chat/modules/profile_page.dart';
import 'package:chat/modules/settings_page.dart';
import 'package:flutter/material.dart';

class MyappBar {
  static AppBar Bar(BuildContext context) => AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          "ChatApp",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 30,
            ),
          ),
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
              icon: Icon(
                Icons.search_outlined,
                size: 30,
              )),
          IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings())),
            icon: Icon(
              Icons.more_vert_outlined,
              opticalSize: 40,
              size: 30,
            ),
          ),
        ],
        bottom: TabBar(indicatorColor: Colors.white, tabs: [
          Tab(
            icon: Icon(Icons.group),
          ),
          Tab(
            text: "Chat",
          ),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          )
        ]),
      );
}
