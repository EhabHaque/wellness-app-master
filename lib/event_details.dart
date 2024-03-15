import 'package:appwrite/models.dart';
import 'main.dart';
import 'format_datetime.dart';
import 'package:url_launcher/url_launcher.dart';
import 'database.dart';
import 'saved_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:add_2_calendar/add_2_calendar.dart';
class EventDetails extends StatefulWidget {
  final Document data;
  const EventDetails({super.key, required this.data});
 @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  String id = "";

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 300,
              width: double.infinity,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                child: Image.network(
                  "https://cloud.appwrite.io/v1/storage/buckets/65eb3aae7e32286bb613/files/${widget.data.data["image"]}/view?project=65e8cf7ac9881d2098c3&mode=admin",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 25,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: Colors.white,
                  )),
            ),
            Positioned(
              bottom: 45,
              left: 8,
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${formatDate(widget.data.data["startDateTime"])}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.access_time_outlined,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${formatTime(widget.data.data["startDateTime"])}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 8,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${widget.data.data["location"]}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.data.data["name"],
                        style: TextStyle(
                            color: appTheme.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.data.data["description"],
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Special Guests ",
                  style: TextStyle(
                      color: appTheme.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "${widget.data.data["guests"] == "" ? "None" : widget.data.data["guests"]}",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "More Info ",
                  style: TextStyle(
                      color: appTheme.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                
                Text(
                  "Event Type : ${widget.data.data["isInPerson"] == true ? "In Person" : "Virtual"}",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),               
               if (widget.data.data["urlLink"] != null && widget.data.data["urlLink"] != "")
            GestureDetector(
              onTap: () {
                _launchURL(widget.data.data["urlLink"]);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Link: ${widget.data.data["urlLink"]}",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Starts : ${formatDate(widget.data.data["startDateTime"])} ${formatTime(widget.data.data["startDateTime"])}",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Ends : ${formatDate(widget.data.data["endDateTime"])} ${formatTime(widget.data.data["endDateTime"])}",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Location : ${widget.data.data["location"]}",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                 Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _addToCalendar(
                    widget.data.data["name"],
                    widget.data.data["description"],
                    widget.data.data["location"],
                    widget.data.data["startDateTime"],
                    widget.data.data["endDateTime"]
                  );
                },
                child: Text('Add to Calendar'),
              ),
            ),
          ),
              ],
            ),
          )
        ],
      ),
    );
  }
    void _addToCalendar(
    String name,
    String description,
    String location,
    DateTime startDateTime,
    DateTime endDateTime,
  ) {
    final event = Event(
      title: name,
      description: description,
      location: location,
      startDate: startDateTime,
      endDate: endDateTime,
    );

    Add2Calendar.addEvent2Cal(event).then((success) {
      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Event added to calendar successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to add event to calendar')),
        );
      }
    });
  }
  void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
    }
  }
}