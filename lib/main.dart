import 'dart:async';
import 'dart:io';
import 'package:example/utils.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'custom_icons_icons.dart';
import 'saved_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'events.dart';
import 'wellness_activities_mainpage.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'pomodoro.dart';
import 'dart:math';
import 'quote_provider.dart';
import 'ResourcesPage.dart';
import 'TicTacToeGame.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'timerService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SavedData.init();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  HttpOverrides.global = MyHttpOverrides();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TimerService>(
          create: (_) => TimerService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavWrapper(), //Test BottomNav() if it doesnt work
        theme: appTheme,
        title: "YFS Wellness Center",
      ),
    ),
  );
}

ThemeData appTheme = ThemeData(
  primaryColor: Color.fromRGBO(180, 117, 231, 0.573),
  //secondaryHeaderColor: Colors.red /* Colors.teal*/
  // fontFamily:
);

int sel = 0;
double? width;
double? height;

final bodies = [
  HomeScreen(),
  ResourcesPage(),
  Event(),
  Pomodoro(),
  TicTacToeGame()
];

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  _BottomNavState createState() => _BottomNavState();
}

class BottomNavWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNav(),
    );
  }
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
        label: "Game"));
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
            HomePage(),
          ],
          //To add a new widget you have to add it here.
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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

  /////////////////////// MAIN UI PAGE /////////////////////////////////////
  /////////////////////// MAIN UI PAGE /////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  appTheme.primaryColor,
                  appTheme.secondaryHeaderColor
                ]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/YFSWellnessCentreLogo.png',
                    width: 200,
                    height: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Text(
                        dailyQuote,
                        style: textStyle(24, Color.fromRGBO(0, 80, 67, 0.85),
                            FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Upcoming Events",
                  style: textStyle(
                      24, Color.fromRGBO(0, 80, 67, 1), FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Check out our selections of events and remember to save them on your calender so you dont miss out!",
                  style: textStyle(14, Color.fromRGBO(0, 80, 67, 1)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
                onTap: () {
                  // Navigate to the events page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Event(),
                    ),
                  );
                },
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 250,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color of the box
                        borderRadius:
                            BorderRadius.circular(10), // Border radius
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 143, 142, 142),
                            // spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(0, 0), // Shadow position
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/stockEvents.png",
                        fit: BoxFit.contain, // Adjust to your needs
                      ),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Wellness At York",
                  style: textStyle(
                      24, Color.fromRGBO(0, 80, 67, 1), FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "A selection of activities on campus to help you relax and rejuvenate.",
                  style: textStyle(14, Color.fromRGBO(0, 80, 67, 1)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), // Add padding here
            child: Container(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                itemBuilder: (context, index) {
                  // Add spacing between cards
                  return Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 0,
                    ), // Adjust spacing as needed
                    child: WellnessActivityCard(wellnessActivities[index]),
                  );
                },
                shrinkWrap: true,
                itemCount: wellnessActivities.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    showContactPopup(context); // Handle onTap event
                  },
                  child: Container(
                    width: double.infinity, // Expand to available width
                    padding:
                        EdgeInsets.symmetric(vertical: 20), // Adjust padding
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        appTheme.primaryColor,
                        appTheme.secondaryHeaderColor
                      ]), // Solid border
                      borderRadius: BorderRadius.circular(20),
                      // Rounded corners
                    ),
                    child: Text(
                      'CONTACT US',
                      style: textStyle(
                        24,
                        Color.fromRGBO(0, 80, 67, 1),
                        FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularButton(
                    icon: Icons.facebook,
                    onPressed: () async {
                      launchUrl(
                          Uri.parse(
                              'https://www.facebook.com/yfslocal68/about'),
                          webViewConfiguration: WebViewConfiguration());

                      // Handle Pinterest button press
                      // Add your navigation logic or URL launch here
                    },
                  ),
                  CircularButton(
                    icon: CustomIcons.twitter,
                    onPressed: () async {
                      launchUrl(Uri.parse('https://x.com/yfslocal68?lang=en'));
                      // Handle Twitter button press
                      // Add your navigation logic or URL launch here
                    },
                  ),
                  CircularButton(
                    icon: CustomIcons.pinterest_circled,
                    onPressed: () {
                      launchUrl(
                          Uri.parse('https://www.pinterest.ca/YFSWellness/'));
                      // Handle Spotify button press
                      // Add your navigation logic or URL launch here
                    },
                  ),
                  CircularButton(
                    icon: CustomIcons.instagram,
                    onPressed: () async {
                      launchUrl(
                          Uri.parse('https://www.instagram.com/yfswellness'));
                      // Handle Instagram button press
                      // Add your navigation logic or URL launch here
                    },
                  ),
                  CircularButton(
                    icon: CustomIcons.spotify,
                    onPressed: () {
                      launchUrl(Uri.parse(
                          'https://open.spotify.com/user/31nzfhtefa7yv6qdzzxth5t5ab7y?si=f698aa73a0e74660&nd=1&dlsi=823dd4afed534aed'));
                      // Handle Instagram button press
                      // Add your navigation logic or URL launch here
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    ]);
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
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(180, 117, 231, 0.573), // Customize button color
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white, // Customize icon color
            size: 40.0,
          ),
        ),
      ),
    );
  }
}

/////////////////////-Wellness Activities-//////////////////////////

//This part is for the wellness box/widgets

class WellnessActivityCard extends StatelessWidget {
  final WellnessActivity wellnessActivity;

  WellnessActivityCard(this.wellnessActivity);

  @override
  Widget build(BuildContext context) {
    //This part basically detects the gestures to swipe right
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WellnessDetailPage(wellnessActivity),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: 200,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(wellnessActivity.image),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 143, 142, 142),
                          // spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: 60,
                  child: Container(
                    color: Colors.white, // Solid white section
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                        wellnessActivity.name, // Add your text here
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 80, 67, 0.85),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
