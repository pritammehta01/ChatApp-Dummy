import 'dart:io';

import 'package:chat/materials/item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemWidget extends StatelessWidget {
  final Component item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(item.url),
      ),
      title: item.name.text.bold.size(18).make().py(4),
      subtitle: item.message.text.bold.make().py(4),
      trailing: item.date.text.make(),
    );
  }
}

Future<File?> pickedImage(BuildContext context) async {
  File? image;
  try {
    final imageSource = await showDialog<ImageSource>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("select Image Source"),
        actions: [
          TextButton.icon(
              onPressed: () {
                Navigator.pop(context, ImageSource.gallery);
              },
              icon: Icon(Icons.image),
              label: Text("Gallery")),
          TextButton.icon(
              onPressed: () {
                Navigator.pop(context, ImageSource.camera);
              },
              icon: Icon(Icons.camera),
              label: Text("Camera")),
        ],
      ),
    );
    if (imageSource != null) {
      final pickedImage = await ImagePicker().pickImage(source: imageSource);
      if (pickedImage != null) {
        image = File(pickedImage.path);
      }
    }
  } catch (e) {}
  return image;
}
