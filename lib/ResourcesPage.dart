import 'package:example/utils.dart';
import 'package:flutter/material.dart';
import 'mental_health_resources.dart';

class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'RESOURCES',
        style: textStyle(25, Colors.black87, FontWeight.bold),
      )),
      body: ListView.builder(
        itemCount: 9, // Switch Back to 10 if adding videos.
        itemBuilder: (context, index) {
          String resourceName = '';
          String resourceContent = '';
          switch (index) {
            case 0:
              resourceName = 'Mental Health';
              break;
            case 1:
              resourceName = 'Physical Health';
              break;
            case 2:
              resourceName = 'Sexual Violence';
              break;
            case 3:
              resourceName = 'Harm Reduction';
              break;
            case 4:
              resourceName = 'Housing';
              break;
            case 5:
              resourceName = 'Academic';
              break;
            case 6:
              resourceName = 'Financial';
              break;
            case 7:
              resourceName = 'Employment';
              break;
            // case 8:
            //   resourceName = 'Video';
            //   break;
            case 8:
              resourceName = 'Other';
              break;
          }

          return ResourceButton(resourceName, resourceContent);
        },
      ),
    );
  }
}

class ResourceButton extends StatelessWidget {
  final String resourceName;
  final String resourceContent;

  ResourceButton(this.resourceName, this.resourceContent);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Builder(
          builder: (context) {
            Icon listIcon;
            switch (resourceName) {
              case "Mental Health":
                listIcon = Icon(Icons.favorite);
                break;
              case "Physical Health":
                listIcon = Icon(Icons.health_and_safety);
                break;
              case "Sexual Violence":
                listIcon = Icon(Icons.healing);
                break;
              case "Harm Reduction":
                listIcon = Icon(Icons.person_add_alt_1);
                break;
              case "Housing":
                listIcon = Icon(Icons.house);
                break;
              case "Academic":
                listIcon = Icon(Icons.school);
                break;
              case "Financial":
                listIcon = Icon(Icons.attach_money);
                break;
              case "Employment":
                listIcon = Icon(Icons.group);
                break;
              // case "Video":
              //   listIcon = Icon(Icons.camera_alt);
              //   break;
              case "Other":
                listIcon = Icon(Icons.more_horiz);
                break;
              default:
                listIcon = Icon(Icons.question_mark);
            }
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResourceDetailPage(resourceName),
                  ),
                );
              },
              contentPadding: EdgeInsets.only(left: 20),
              leading: listIcon,
              title: Row(
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Text(resourceName, style: TextStyle(fontSize: 20)))
                ],
              ),
              trailing: Icon(Icons.arrow_right),
            );
          },
        ));
  }
}

class ResourceDetailPage extends StatelessWidget {
  final String resourceName;

  ResourceDetailPage(this.resourceName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resourceName),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: MentalHealthPage(resourceName)
            ),
      ),
    );
  }
}
