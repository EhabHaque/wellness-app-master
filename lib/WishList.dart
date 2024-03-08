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
        /*
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
    */
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("Mental Health"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Physical Health'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Sexual Violence'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Harm Reduction'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('Housing'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Academic'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[700],
              child: const Text('Financial'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[800],
              child: const Text('Employment'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[900],
              child: const Text('Video'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[900],
              child: const Text('Other'),
            ),
          ],
        ));
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
