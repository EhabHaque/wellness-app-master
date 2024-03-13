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
              resourceName = 'Mental Health Resources';
              resourceContent = mentalHealthResources;
              break;
            case 1:
              resourceName = 'Physical Health Resources';
              resourceContent = physicalHealthResources;
              break;
            case 2:
              resourceName = 'Sexual Violence Resources';
              resourceContent = sexualViolenceResources;
              break;
            case 3:
              resourceName = 'Harm Reduction Resources';
              resourceContent = harmReductionResources;
              break;
            case 4:
              resourceName = 'Housing Resources';
              resourceContent = housingResources;
              break;
            case 5:
              resourceName = 'Academic Resources';
              resourceContent = academicResources;
              break;
            case 6:
              resourceName = 'Financial Resources';
              resourceContent = financialResources;
              break;
            case 7:
              resourceName = 'Employment Resources';
              resourceContent = employmentResources;
              break;
            case 8:
              resourceName = 'Video Resources';
              resourceContent = videoResources;
              break;
            case 9:
              resourceName = 'Other Resources';
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
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ResourceDetailPage(resourceName, resourceContent),
          ),
        );
      },
      child: Text(resourceName),
    );
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
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text(
              //  'Resource Name: $resourceName',
              //  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //),
              //SizedBox(height: 10),
              Text(
                '$resourceContent',
                style: TextStyle(fontSize: 16),
              ),
              // Add more content as needed
            ],
          ),
        ),
      ),
    );
  }
}
