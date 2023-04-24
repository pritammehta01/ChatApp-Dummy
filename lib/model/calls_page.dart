import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            contentPadding: EdgeInsets.all(16),
            leading: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.teal[800],
              child: Icon(
                CupertinoIcons.link,
                color: context.canvasColor,
              ),
            ),
            title: "Create call link".text.xl2.bold.make(),
            subtitle:
                "Share a link for your WhatsApp call".text.bold.size(16).make(),
          ),
          "Recent".text.size(16).semiBold.make().pOnly(left: 20)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.teal,
          child: Icon(
            Icons.add_ic_call_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
