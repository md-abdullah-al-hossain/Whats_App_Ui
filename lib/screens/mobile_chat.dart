import 'package:flutter/material.dart';
import 'package:whats_app_ui/theme/app_color.dart';
import 'package:whats_app_ui/widgets/chat_screen.dart';
import 'package:whats_app_ui/widgets/info.dart';


class MobileChat extends StatelessWidget {
  const MobileChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatScreen(),
          ),
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              fillColor: mobileChatBoxColor,
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                      ),
                    ),
                  ],
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
