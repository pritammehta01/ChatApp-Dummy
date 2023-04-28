import 'package:chat/model/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: "Profile".text.make(),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 16),
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => ProfileImagePickerBottomSheet());
            },
            child: Container(
              height: 150,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.shutterstock.com/image-vector/human-icon-people-picture-profile-260nw-1012771615.jpg"),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: context.canvasColor,
                  ),
                ).pOnly(top: 90, left: 100),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              title: "Name".text.bold.xl.make(),
              subtitle:
                  "This is not your username or pin. This name will be visible to your WhatsApp contacts."
                      .text
                      .semiBold
                      .make(),
              trailing: Icon(
                Icons.edit,
                color: (Colors.teal),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                size: 30,
              ),
              subtitle: "Sleeping".text.bold.make(),
              trailing: Icon(
                Icons.edit,
                color: (Colors.teal),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.call,
                size: 30,
              ),
              title: "Phone".text.make(),
              subtitle: "+9198657354".text.bold.make(),
              trailing: Icon(
                Icons.edit,
                color: (Colors.teal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
