import 'dart:convert';
import 'dart:io';
import 'package:chat/pages/calls_page.dart';
import 'package:chat/pages/chat_page.dart';
import 'package:chat/pages/group_page.dart';
import 'package:chat/pages/status_page.dart';
import 'package:chat/widgets/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../materials/item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
          backgroundColor: Colors.teal,
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
