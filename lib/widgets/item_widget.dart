import 'package:chat/materials/item.dart';
import 'package:flutter/material.dart';
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
