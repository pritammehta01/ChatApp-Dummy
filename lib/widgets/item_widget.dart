import 'package:chat/materials/item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemWidget extends StatelessWidget {
  final Component component;

  const ItemWidget({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(component.url),
      ),
      title: component.name.text.bold.size(18).make().py(4),
      subtitle: component.message.text.bold.make().py(4),
      trailing: component.date.text.make(),
    );
  }
}
