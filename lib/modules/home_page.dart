import 'dart:convert';
import 'dart:io';
import 'package:chat/model/calls_page.dart';
import 'package:chat/model/chat_page.dart';
import 'package:chat/model/group_page.dart';
import 'package:chat/model/status_page.dart';
import 'package:chat/modules/appbar.dart';
import 'package:chat/modules/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../materials/item.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final itemJson = await rootBundle.loadString("assets/files/new.json");
    final decodedData = jsonDecode(itemJson);
    var productData = decodedData["products"];

    ItemModel.items = List.from(productData)
        .map<Component>((item) => Component.fromMap(item))
        .toList();
    setState(() {});
  }

  late File _image;
  final picker = ImagePicker();
  void takePhote() async {
    final PickedFile = await picker.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    //pasted
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text(
            "ChatApp",
          ),
          actions: [
            IconButton(
              onPressed: () {
                takePhote();
              },
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 30,
              ),
            ),
            IconButton(
                onPressed: () {},
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
        ),
        body: TabBarView(
          children: [GroupScreen(), ChatScreen(), StatusScreen(), CallScreen()],
        ),
      ),
    );
  }
}
