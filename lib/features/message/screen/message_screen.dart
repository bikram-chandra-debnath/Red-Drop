import 'package:flutter/material.dart';
import 'package:red_drop_2/common/widgets/appbar/carve_appbart.dart';
import 'package:red_drop_2/features/message/screen/widgets/active_users.dart';
import 'package:red_drop_2/features/message/screen/widgets/chat_list.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(title: "Messages", isBack: false),

            // online users
            ActiveUsers(),
            // previous chat
            ChatList(),
          ],
        ),
      ),
    );
  }
}


