import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
            "https://www.hivedesk.com/wp-content/uploads/2022/01/undraw_Group_chat_re_frmo.png"),
        "Introducing Communities"
            .text
            .bold
            .xl3
            .make()
            .pOnly(top: 16, bottom: 8, left: 50),
        "Easily organise your related groups and send"
            .text
            .lg
            .make()
            .pOnly(top: 10, left: 45, right: 16),
        "announcements. Now, your communities, like".text.lg.make().pOnly(
              left: 40,
              right: 16,
            ),
        "neighbourhoods or schools, can have their own space."
            .text
            .lg
            .make()
            .pOnly(left: 20),
        ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.teal),
                onPressed: () {},
                child: "Start your community"
                    .text
                    .color(context.canvasColor)
                    .make())
            .pOnly(left: 60, right: 60, top: 26)
      ],
    );
  }
}
