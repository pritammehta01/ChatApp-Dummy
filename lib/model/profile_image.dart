import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileImagePickerBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(children: [
        "Choose Profile Image".text.xl.bold.make().pOnly(left: 100, top: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_outlined),
                label: "Camera".text.make()),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.image_outlined),
                label: "Galery".text.make()),
          ],
        )
      ]),
    );
  }
}
