import 'package:flutter/material.dart';
import 'package:whats_app_ui/theme/app_color.dart';
import 'package:whats_app_ui/widgets/info.dart';


class WebChatBar extends StatelessWidget {
  const WebChatBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/161208708?v=4'),
                radius: 24 ,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_vert, size: 30))
            ],
          )
        ],
      ),
    );
  }
}
