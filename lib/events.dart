import 'package:appwrite/models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'event_container.dart';
//import 'auth.dart';
import 'main.dart';
import 'database.dart';
//import 'saved_data.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});
  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
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
        // title: Text("Events", style: GoogleFonts.getFont("Montserrat")),
        title: Text("Events"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              "",
              style: TextStyle(
                  color: appTheme.primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => EventContainer(data: events[index]),
                  childCount: events.length))
        ],
      ),
    );
  }
}
