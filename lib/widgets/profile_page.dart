import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static String selectedImagePath = ""; // Declare static variable here

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String ImagePath = ProfilePage.selectedImagePath;
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
              ProfileImage();
            },
            child: Container(
              height: 150,
              child: ClipOval(
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: ImagePath == ""
                      ? AssetImage("assets/images/profile1.webp")
                      : FileImage(File(ImagePath)) as ImageProvider,
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

  Future<void> ProfileImage() async {
    await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 100.0,
            child: ListView(children: [
              "Choose Profile Image"
                  .text
                  .xl
                  .bold
                  .make()
                  .pOnly(left: 100, top: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                      onPressed: () async {
                        String? imagePath = await selectImagefromCamera();
                        if (imagePath != null) {
                          setState(() {
                            ProfilePage.selectedImagePath = imagePath;
                          });
                        }
                      },
                      icon: Icon(Icons.camera_alt_outlined),
                      label: "Camera".text.make()),
                  TextButton.icon(
                      onPressed: () async {
                        String? imagePath = await selectImagefromGallary();
                        if (imagePath != null) {
                          setState(() {
                            ProfilePage.selectedImagePath = imagePath;
                          });
                        }
                      },
                      icon: Icon(Icons.image_outlined),
                      label: "Gallery".text.make()),
                ],
              )
            ]),
          );
        });
  }

  selectImagefromGallary() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return "";
    }
  }

  selectImagefromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return "";
    }
  }
}
