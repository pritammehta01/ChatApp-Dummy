import 'dart:convert';
import 'package:chat/model/calls_page.dart';
import 'package:chat/model/chat_page.dart';
import 'package:chat/model/group_page.dart';
import 'package:chat/model/status_page.dart';
import 'package:chat/modules/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  @override
  Widget build(BuildContext context) {
    //pasted
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: MyappBar.Bar(context),
        body: TabBarView(
          children: [GroupScreen(), ChatScreen(), StatusScreen(), CallScreen()],
        ),
      ),
    );
  }
}
