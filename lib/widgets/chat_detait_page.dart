import 'package:chat/materials/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatDetailPage extends StatelessWidget {
  final Component item;

  const ChatDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 16.0,
        backgroundColor: Colors.teal,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(item.url),
          ),
          title: Text(item.name),
          //  item.name.text.bold.size(14).make().py(4),
          subtitle: item.date.text.make(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Container(
        child: FooterLayout(
          footer: KeyboardAttachable(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.emoji_emotions)),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt)),
                            ),
                          ).pOnly(right: 10, bottom: 0.0, left: 2),
                          Positioned(
                            child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.currency_rupee_rounded))
                                .pOnly(left: 220),
                          ),
                          Positioned(
                            child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.attachment))
                                .pOnly(left: 180),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(bottom: 12),
                      iconSize: 50,
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Icon(CupertinoIcons.mic_fill),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
