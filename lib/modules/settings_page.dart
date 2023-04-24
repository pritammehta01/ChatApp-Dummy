import 'package:chat/model/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: "Settings".text.size(20).make(),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 0.3,
            child: Container(
              height: 90,
              child: ListTile(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage())),
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 38.0,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                title: "Unknown".text.size(20).bold.make().py8(),
                subtitle: "Slepping".text.size(14).bold.make(),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.qr_code_sharp,
                      size: 30.0,
                      color: Colors.teal,
                    )).px(16),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.key_outlined,
              size: 30,
            ),
            title: "Account".text.size(18).make(),
            subtitle: "Security Notifications, Change number".text.make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.language,
              size: 30,
            ),
            title: "App Language".text.size(18).make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            title: "Local Player Settings".text.size(18).make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.chat,
              size: 30,
            ),
            title: "Chats".text.size(18).make(),
            subtitle: "Theme, Wallpapers, Chat History".text.make(),
          ).py8(),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.lock,
              size: 30,
            ),
            title: "Privacy".text.size(18).make(),
            subtitle: "Block contacts, Disappearing messages".text.make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.notification_important,
              size: 30,
            ),
            title: "Notifications".text.size(18).make(),
            subtitle: "messages, Group & Call tones".text.make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.data_usage,
              size: 30,
            ),
            title: "Storage & Data".text.size(18).make(),
            subtitle: "Network Usage, Auto-Download".text.make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.help_outline_rounded,
              size: 30,
            ),
            title: "Help".text.size(18).make(),
            subtitle: "Help center, Contact us, Privacy policy".text.make(),
          ).py8(),
          ListTile(
            leading: Icon(
              Icons.person_add_outlined,
              size: 30,
            ),
            title: "Invite a freind".text.size(18).make(),
          ).py8(),
        ],
      ),
    );
  }
}
