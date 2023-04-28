import 'package:chat/widgets/chat_detait_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';
import '../materials/item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: ItemModel.items.length,
        itemBuilder: (context, index) {
          final item = ItemModel.items[index];
          return ItemModel.items != null && ItemModel.items.isNotEmpty
              ? InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatDetailPage(item: item))),
                  child: ItemWidget(item: item))
              : CircularProgressIndicator().centered();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.teal,
          child: Icon(
            Icons.chat_outlined,
            color: context.canvasColor,
          ),
        ),
      ),
    );
  }
}
