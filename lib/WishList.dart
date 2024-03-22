import 'package:flutter/material.dart';
import 'mental_health_resources.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resources App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResourcesPage(),
    );
  }
}

class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          String resourceName = '';
          String resourceContent = '';
          switch (index) {
            case 0:
              resourceName = 'Mental Health';
              resourceContent = mentalHealthResources;
              break;
            case 1:
              resourceName = 'Physical Health';
              resourceContent = physicalHealthResources;
              break;
            case 2:
              resourceName = 'Sexual Violence';
              resourceContent = sexualViolenceResources;
              break;
            case 3:
              resourceName = 'Harm Reduction';
              resourceContent = harmReductionResources;
              break;
            case 4:
              resourceName = 'Housing';
              resourceContent = housingResources;
              break;
            case 5:
              resourceName = 'Academic';
              resourceContent = academicResources;
              break;
            case 6:
              resourceName = 'Financial';
              resourceContent = financialResources;
              break;
            case 7:
              resourceName = 'Employment';
              resourceContent = employmentResources;
              break;
            case 8:
              resourceName = 'Video';
              resourceContent = videoResources;
              break;
            case 9:
              resourceName = 'Other';
              resourceContent = otherResources;
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
              case "Video":
                listIcon = Icon(Icons.camera_alt);
                break;
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
                    builder: (context) =>
                        ResourceDetailPage(resourceName, resourceContent),
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
  final String resourceContent;

  ResourceDetailPage(this.resourceName, this.resourceContent);

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
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       '$resourceContent',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //     // Add more content as needed
            //   ],
            // ),
            ),
      ),
    );
  }
}
