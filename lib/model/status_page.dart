import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

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
              backgroundImage: NetworkImage(
                  "https://t3.ftcdn.net/jpg/05/17/79/88/240_F_517798849_WuXhHTpg2djTbfNf0FQAjzFEoluHpnct.jpg"),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  maxRadius: 15,
                  child: Icon(
                    Icons.add,
                    color: context.canvasColor,
                  ),
                ),
              ),
            ),
            title: "My staus".text.semiBold.xl2.make(),
            subtitle: "Tap to add status update".text.semiBold.lg.make(),
          ),
        ],
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 75,
            right: 13,
            child: SizedBox(
              height: 50,
              width: 40,
              child: FloatingActionButton(
                onPressed: () {},
                child: CircleAvatar(
                  backgroundColor: context.accentColor,
                  child: Icon(
                    Icons.edit,
                    color: context.canvasColor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 8,
            bottom: 10,
            child: FloatingActionButton(
              onPressed: () {},
              child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    CupertinoIcons.camera_fill,
                    color: context.canvasColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
