import 'package:flutter/material.dart';
import 'package:appwrite/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'main.dart';
import 'event_container.dart';
import 'database.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  //String userName = "User";
  List<Document> events = [];
  bool isLoading = true;

  @override
  void initState() {
    //userName = SavedData.getUserName().split(" ")[0];
    refresh();
    super.initState();
  }

  void refresh() {
    getAllEvents().then((value) {
      events = value;
      isLoading = false;
      setState(() {});
    });
    // getPastEvents().then((value) {
    //   events = value;
    //   isLoading = false;
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () async {
                // logoutUser();
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));

                refresh();
              },
              icon: Icon(
                Icons.account_circle,
                color: appTheme.primaryColor,
                size: 30,
              ))
        ],
      ),*/
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi",
                    style: TextStyle(
                        color: appTheme.primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  Text("Explore events around you",
                      style: TextStyle(
                          color: appTheme.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  isLoading
                      ? const SizedBox()
                      : CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 5),
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.99,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: [
                            ...List.generate(4, (index) {
                              return EventContainer(
                                data: events[index],
                              );
                            }),
                          ],
                        ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 2, top: 8, left: 6, right: 6),
              child: Text(
                "All Events",
                style: TextStyle(
                  color: appTheme.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => EventContainer(data: events[index]),
                  childCount: events.length)),
        ],
      ),
    );
  }
}
