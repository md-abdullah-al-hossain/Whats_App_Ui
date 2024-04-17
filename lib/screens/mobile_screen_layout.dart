import 'package:flutter/material.dart';
import 'package:whats_app_ui/theme/app_color.dart';
import 'package:whats_app_ui/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            'Whats App',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 1.5,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            tabs: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: 8.0), // Adjust the value as needed
                child: Text('Chats'),
              ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: 8.0), // Adjust the value as needed
                child: Text('Status'),
              ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: 8.0), // Adjust the value as needed
                child: Text('Calls'),
              ),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.comment,
            color: Colors.white,
            size: 30,
          ),
          backgroundColor: tabColor,
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}
