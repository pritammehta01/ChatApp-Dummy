import 'dart:io';
import 'package:chat/materials/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: "Profile".text.make(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  selectImage();
                },
                child: image != null
                    ? CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(image!),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        radius: 70,
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 142,
                        ),
                      )),
            SizedBox(
              height: 20,
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
      ),
    );
  }

  void selectImage() async {
    image = await pickedImage(context);
    setState(() {});
  }
}
