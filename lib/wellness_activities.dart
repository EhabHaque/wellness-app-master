import 'package:flutter/material.dart';

//Constructor Stuff
class WellnessActivity {
  final String image;
  final String name;
  final String description;

  WellnessActivity({
    required this.image,
    required this.name,
    required this.description,
  });
}

//List of Wellness Activities
List<WellnessActivity> wellnessActivities = [
  WellnessActivity(
    image: "assets/images/YFSWellnessCentre.PNG",
    name: "Wellness Centre",
    description: "$WellnessCentreDes",
  ),
  WellnessActivity(
    image: "assets/images/Tait.png",
    name: "Tait McKenzie",
    description: "$Tait",
  ),
   WellnessActivity(
    image: "assets/images/Club.png",
    name: "Join A Club",
    description: "$Club",
  ),
  WellnessActivity(
    image: "assets/images/Biking.png",
    name: "Biking On Campus",
    description: "$Bike",
  ),
   WellnessActivity(
    image: "assets/images/Podcast.png",
    name: "Podcasts",
    description: "$Podcasts",
  ),
   WellnessActivity(
    image: "assets/images/Calumet.PNG",
    name: "Wellness Lounge",
    description: "$Calumet",
  ),
   WellnessActivity(
    image: "assets/images/Walk.png",
    name: "Walk On Campus",
    description: "$Walk",
  ),
   WellnessActivity(
    image: "assets/images/Yoga.png",
    name: "Yoga & Meditation",
    description: "$Yoga",
  ),
   WellnessActivity(
    image: "assets/images/Sports.png",
    name: "Sports/Intramurals",
    description: "$Sports",
  ),
];

//UI Stuff And Display 
class WellnessDetailPage extends StatelessWidget {
  final WellnessActivity? wellnessActivity;

  WellnessDetailPage({this.wellnessActivity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
        children: [
          // Display details of wellness activity
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${wellnessActivity?.name ?? 'Unknown'}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${wellnessActivity?.description ?? 'No description available'}",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      )
    );
  }
}

//Descriptions

final String WellnessCentreDes = '''
  York University Student Counselling, Health, & Well-being

  - N110 Bennett Center (Keele)
    - Website: [YorkU Counselling](https://students.yorku.ca/counselling)
    - Email: [schw@yorku.ca](mailto:schw@yorku.ca)
    - Phone: (416) 736-5297

  YH B108 Student Success Centre (Glendon)
    - Website: [Glendon Counselling](https://www.yorku.ca/glendon/supports-and-services/glendon-counselling/)
    - Email: [counselling@glendon.yorku.ca](mailto:counselling@glendon.yorku.ca)
    - Phone: (416) 487 6701

  Student Accessibility Services
    - N108 Ross Building
    - Website: [Accessibility Services](https://students.yorku.ca/accessibility)
    - Email: [sasinfo@yorku.ca](mailto:sasinfo@yorku.ca)
    - Phone: 416-736-5755

  YFS Access Centre
    - Phone: 416-736-2100 ext. 77612
    - Email: [yfsaccesscentre@csg.yfs.ca](mailto:yfsaccesscentre@csg.yfs.ca)
    - Location: 321 First Student Centre
    - Description: Student-run alternative to disability services that offers York students and staff a space to consider various dimensions of the disability experience

  Graduate Student Wellness Services
    - Website: [Grad Wellness Services](https://www.yorku.ca/gradstudies/students/current-students/grad-wellness-services/)
    - Email: [gradwell@yorku.ca](mailto:gradwell@yorku.ca)
    - Phone: (416) 736-2100 Ext. 33379
    - Description: All registered part–time/full–time York University graduate students may access the service. Grad students who are not currently registered active but are on an approved leave from their studies may also access the service.
''';

final String Tait = ''' ''';

final String Club = ''' ''';

final String Bike = ''' ''';

final String Podcasts = ''' ''';

final String Calumet = ''' ''';

final String Walk = ''' ''';

final String Yoga= ''' ''';

final String Sports = ''' ''';