import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'saved_data.dart';
import 'Notifications.dart' as prefix0;
import 'package:url_launcher/url_launcher.dart';
import 'events.dart';
import 'WishList.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'Notifications.dart';
import 'dart:math'; 
import 'quote_provider.dart';

import 'wellness_activities.dart';
import 'snake_game.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SavedData.init();
  // Initialize the local notifications plugin
  await initNotifications();
  HttpOverrides.global = MyHttpOverrides();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNav(),
    theme: appTheme,
    title: "YFS Wellness Center",
    onGenerateRoute: (RouteSettings settings) {
      // Handle notification tap here
      if (settings.name == '/notification') {
        // Handle notification tap logic
        print("Notification tapped with payload: ${settings.arguments}");
      }
      // You can add additional route handling here if needed
    },
  ));
}

// Function to initialize local notifications
Future<void> initNotifications() async {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings(
          'app_icon'); // Replace 'app_icon' with your app icon name

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  //await flutterLocalNotificationsPlugin.initialize(
  //initializationSettings,
  //onSelectNotification: (String? payload) async {
  // Handle notification tap here
  //print("Notification tapped with payload: $payload");
  //},
  //);
}
 

ThemeData appTheme = ThemeData(
  primaryColor: Color.fromRGBO(180, 117, 231, 0.573),
  /* Colors.tealAccent,*/
  //secondaryHeaderColor: Colors.red /* Colors.teal*/
  // fontFamily:
);

int sel = 0;
double? width;
double? height;

final bodies = [HomeScreen(), WishList(), Event(), prefix0.Notification(), SnakeGame()];


class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<BottomNavigationBarItem> createItems() {
    List<BottomNavigationBarItem> items = [];
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        label: "Home"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.list,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.list,
          color: Colors.black,
        ),
        label: "Resources"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.event,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.event,
          color: Colors.black,
        ),
        label: "Events"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.lock_clock,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.lock_clock,
          color: Colors.black,
        ),
        label: "Pomodoro"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.gamepad,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.gamepad,
          color: Colors.black,
        ),
        label: "Snake"));
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodies.elementAt(sel),
        bottomNavigationBar: BottomNavigationBar(
          items: createItems(),
          unselectedItemColor: Colors.black,
          selectedItemColor: appTheme.primaryColor,
          type: BottomNavigationBarType.shifting,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          currentIndex: sel,
          elevation: 1.5,
          onTap: (int index) {
            if (index != sel)
              setState(() {
                sel = index;
              });
          },
        ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigation.selindex=0;

    width = MediaQuery.of(context).size.shortestSide;
    height = MediaQuery.of(context).size.longestSide;
    return Scaffold(
      // bottomNavigationBar: /*NavigationTest()*/Navigation(),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            HomeTop(),
            homeDown(),
            WellnessActivitiesSection(),
            ContactUsContainer()
          ],
          //To add a new widget you have to add it here.
        ),
      ),
    );
  }
}


class HomeTop extends StatefulWidget {
  @override
  _HomeTop createState() => _HomeTop();
}

class _HomeTop extends State<HomeTop> {
  String dailyQuote = "";
  @override
  void initState() {
    super.initState();
    // Set a new quote when the widget is initialized
    setRandomQuote();

    // Schedule a timer to update the quote every 24 hours
    const duration = const Duration(hours: 24);
    Timer.periodic(duration, (Timer timer) {
      setRandomQuote();
    });
  }
  void setRandomQuote() {
    // Get a random index to select a quote
    int randomIndex = Random().nextInt(QuoteProvider.quotes.length);

    // Set the dailyQuote to the randomly selected quote
    setState(() {
      dailyQuote = QuoteProvider.quotes[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: Clipper08(),
          child: Container(
            height: height! * .65 < 450 ? height! * .65 : 500, //400
            //color: Colors.tealAccent,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              appTheme.primaryColor,
              appTheme.secondaryHeaderColor
            ])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height! / 16,
                ),
                Spacer(),
                SizedBox(
                  height: height! / 12,
                ),
                Image.asset(
                  'assets/images/YFSWellnessCentreLogo.png',
                ),
                SizedBox(height: height! * 0.0375),
                SizedBox(
                  height: height! * 0.025,
                ),
                Text(
                  dailyQuote,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Clipper08 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);
    // ignore: non_constant_identifier_names
    var End = Offset(size.width / 2, size.height - 30.0);
    // ignore: non_constant_identifier_names
    var Control = Offset(size.width / 4, size.height - 50.0);

    path.quadraticBezierTo(Control.dx, Control.dy, End.dx, End.dy);
    // ignore: non_constant_identifier_names
    var End2 = Offset(size.width, size.height - 80.0);
    // ignore: non_constant_identifier_names
    var Control2 = Offset(size.width * .75, size.height - 10.0);

    path.quadraticBezierTo(Control2.dx, Control2.dy, End2.dx, End2.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class Choice08 extends StatefulWidget {
  final IconData? icon;
  final String? text;
  final bool? selected;
  Choice08({this.icon, this.text, this.selected});
  @override
  _Choice08State createState() => _Choice08State();
}

class _Choice08State extends State<Choice08>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: widget.selected!
          ? BoxDecoration(
              color: Colors.white.withOpacity(.30),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(
            width: width! * .025,
          ),
          Text(
            widget.text!,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}


var viewallstyle =
    TextStyle(fontSize: 14, color: appTheme.primaryColor //Colors.teal
        );
class homeDown extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
return Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: <Widget> [
          // SizedBox(
          //   width: width! * 0.05,
          // ),
          Text(
            "Upcoming Events",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Spacer(), GestureDetector(
      onTap: () {
        // Navigate to the events page
        Navigator.push( context,MaterialPageRoute(builder: (context) => Event(), 
          ),
        );
      },
          child: Text("VIEW ALL", style: viewallstyle),
          )
        ],
      ),
    ),
    Container(
      height: height! * .25 < 170 ? height! * .25 : 170,
      //height: height! * .25 < 300 ? height! * .25 : 300,
      // child:
      // ConstrainedBox(
      //   constraints: BoxConstraints(maxHeight: 170, minHeight: height! * .13),
      child: ListView.builder(
          itemBuilder: (context, index) => cities[index],
          shrinkWrap: true,
          padding: EdgeInsets.all(0.0),
          itemCount: cities.length,
          scrollDirection: Axis.horizontal),
    ),
  ],
);}}
List<City> cities = [
  City(
    image: "assets/images/Kerman.png",
    name: "Kerman",
    monthyear: "Far 1399",
    oldprice: "258500",
    newprice: "150000",
    discount: "58",
  ),
  City(
    image: "assets/images/Mashhad.png",
    name: "Mashhad",
    monthyear: "Far 1399",
    oldprice: "258500",
    newprice: "150000",
    discount: "58",
  ),
  City(
    image: "assets/images/Tehran.png",
    name: "Tehran",
    monthyear: "Far 1399",
    oldprice: "258500",
    newprice: "150000",
    discount: "58",
  ),
];

class City extends StatelessWidget {
  final String? image, monthyear, oldprice;
  final String? name, discount, newprice;

  const City(
      {Key? key,
      this.image,
      this.monthyear,
      this.oldprice,
      this.name,
      this.discount,
      this.newprice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: height! * .137 < 160 ? height! * .137 : 160,
                    width: width! * .5 < 250 ? width! * .5 : 250,
                    //   child: Image.asset(image,fit: BoxFit.cover,)
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image!), fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  height: 60,
                  width: width! * .5 < 250 ? width! * .5 : 250,
                  left: 5,
                  //right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black12],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                  ),
                ),
                Positioned(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        //decoration: BoxDecoration(
                        //   shape: BoxShape.rectangle,
                        //   color: Colors.black.withOpacity(.4),
                        //  borderRadius: BorderRadius.all(Radius.circular(10))
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name!,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              monthyear!,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          discount! + "%",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  left: 10,
                  bottom: 10,
                  right: 15,
                )
              ],
            )),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("\$ " + '${(newprice)}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            SizedBox(
              width: width! * 0.08,
            ),
            Text("\$ " + '${(oldprice)}',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic)),
          ],
        )
      ],
    );
  }
}

class ContactUsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      color: Colors.white, // Background color
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularButton(
                icon: Icons.add,
                onPressed: () {
                  // Handle Pinterest button press
                  // Add your navigation logic or URL launch here
                },
              ),
              CircularButton(
                icon: Icons.add,
                onPressed: () {
                  // Handle Twitter button press
                  // Add your navigation logic or URL launch here
                },
              ),
              CircularButton(
                icon: Icons.add,
                onPressed: () {
                  // Handle Spotify button press
                  // Add your navigation logic or URL launch here
                },
              ),
              CircularButton(
                icon: Icons.add,
                onPressed: () {
                  // Handle Instagram button press
                  // Add your navigation logic or URL launch here
                },
              ),
              CircularButton(
                icon: Icons.add,
                onPressed: () {
                  // Handle Instagram button press
                  // Add your navigation logic or URL launch here
                },
              ),
            ],
          ),
          SizedBox(
              height:
                  20.0), // Add spacing between buttons and additional information
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Email: wellness@yfs.ca',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            'Phone: (416)-736-2100 x44872',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            'York University, Second Student Centre Rm:341',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            'Address: 15 Library Ln, North York, ON M3J 2S5',
            style: TextStyle(fontSize: 16.0),
          ),

          // Add more information as needed
        ],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  CircularButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue, // Customize button color
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white, // Customize icon color
            size: 30.0,
          ),
        ),
      ),
    );
  }
}

/////////////////////-Wellness Activities-//////////////////////////

//This part is for the wellness box/widgets
class WellnessActivitiesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Wellness Activities At York",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              // Spacer(), // Remove the spacer if you don't want the VIEW ALL button
              // Text("VIEW ALL", style: viewallstyle),
            ],
          ),
        ),
        Container(
          height: 170, // Adjust the height as needed
          child: ListView.builder(
            itemBuilder: (context, index) => WellnessActivityCard(
                wellnessActivity: wellnessActivities[index]),
            shrinkWrap: true,
            padding: EdgeInsets.all(0.0),
            itemCount: wellnessActivities.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}

class WellnessActivityCard extends StatelessWidget {
  final WellnessActivity? wellnessActivity;

  WellnessActivityCard({this.wellnessActivity});

  @override
  Widget build(BuildContext context) {
    //This part basically detects the gestures to swipe right
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                WellnessDetailPage(wellnessActivity: wellnessActivity!),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: height! * .137 < 160 ? height! * .137 : 160,
                    width: width! * .5 < 250 ? width! * .5 : 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(wellnessActivity!.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 60,
                  width: width! * .5 < 250 ? width! * .5 : 250,
                  left: 5,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.black12],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              wellnessActivity!.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  left: 10,
                  bottom: 10,
                  right: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/////////////Snake Game///////////////////

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}


