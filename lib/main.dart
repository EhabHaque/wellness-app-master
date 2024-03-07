import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Notifications.dart' as prefix0;
import 'package:url_launcher/url_launcher.dart';
import 'Deals.dart';
import 'SecondPage.dart';
import 'WishList.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'Notifications.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the local notifications plugin
  await initNotifications();

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
      AndroidInitializationSettings('app_icon'); // Replace 'app_icon' with your app icon name

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
final bodies = [HomeScreen(), WishList(), Deals(), prefix0.Notification()];

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
        label: "Pomodoro Timer"));
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
    double h = 50;
    double w = 50;
    return Scaffold(
      // bottomNavigationBar: /*NavigationTest()*/Navigation(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        hoverElevation: 0,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Socials:"),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: StadiumBorder(),
                          ),
                          child: Image.asset('assets/images/pinterest.png'),
                          onPressed: () async {
                            Uri url = Uri.parse(
                                'https://www.pinterest.ca/YFSWellness/');
                            // const url = 'https://www.pinterest.ca/YFSWellness/';
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: StadiumBorder(),
                          ),
                          child: Image.asset('assets/images/instagram.png',
                              fit: BoxFit.cover),
                          onPressed: () async {
                            Uri url = Uri.parse(
                                'https://www.instagram.com/yfswellness');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: StadiumBorder(),
                          ),
                          child: Image.asset(
                              'assets/images/twitter.png'), // Change to twitter asset
                          onPressed: () async {
                            Uri url = Uri.parse(
                                'https://twitter.com/yfslocal68?lang=en');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: StadiumBorder(),
                          ),
                          child: Image.asset('assets/images/spotify.png'),
                          onPressed: () async {
                            Uri url = Uri.parse(
                                'https://open.spotify.com/user/31nzfhtefa7yv6qdzzxth5t5ab7y?si=f698aa73a0e74660&nd=1&dlsi=73bd19c342cc472c');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.info_outline),
        backgroundColor: appTheme.primaryColor.withOpacity(.5),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[HomeTop(), homeDown, homeDown],
        ),
      ),
    );
  }
}

var selectedloc = 0;
List<String> locs = ['Kerman (KER)', 'Mashhad (MASH)'];

class HomeTop extends StatefulWidget {
  @override
  _HomeTop createState() => _HomeTop();
}

class _HomeTop extends State<HomeTop> {
  var isFlightselected = true;
  TextEditingController c = TextEditingController(text: locs[1]);
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
                SizedBox(
                  height: height! / 7,
                ),
                Image.asset(
                  'assets/images/YFSWellnessCentreLogo.png',
                ),
                SizedBox(height: height! * 0.0375),
                SizedBox(
                  height: height! * 0.025,
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
var homeDown = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // SizedBox(
          //   width: width! * 0.05,
          // ),
          Text(
            "Upcoming Events",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Spacer(),
          Text("VIEW ALL", style: viewallstyle)
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
);
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
