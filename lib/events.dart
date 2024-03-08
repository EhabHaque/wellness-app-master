import 'package:appwrite/models.dart';
import 'auth.dart';
import 'main.dart';
import 'database.dart';
import 'saved_data.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Document> events = [];
  @override
  void initState() {
    refresh();
    super.initState();
  }

  void refresh() {
    getAllEvents().then((value) {
      events = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              "Hi 👋",
              style: TextStyle(
                  color: appTheme.primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                        leading: Text(
                          "${index + 1}",
                          style: TextStyle(color: appTheme.primaryColor, fontSize: 20),
                        ),
                        title: Text(
                          events[index].data["name"],
                          style: TextStyle(color: appTheme.primaryColor, fontSize: 20),
                        ),
                        subtitle: Text(
                          events[index].data["location"],
                          style: TextStyle(
                            color: appTheme.primaryColor,
                          ),
                        ),
                      ),
                  childCount: events.length))
        ],
      ),
    );
  }
}