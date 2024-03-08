import 'package:appwrite/appwrite.dart';
import 'saved_data.dart';

import 'auth.dart';

String databaseId = "65e955e072eb7d2905bf";

final Databases databases = Databases(client);

// Save the user data to appwrite database - not creating any new users through the app, implement if needed to create users through app

// Create new events

Future<void> createEvent(
    String name,
    String desc,
    String image,
    String location,
    String datetime,
    String createdBy,
    bool isInPersonOrNot,
    String guest,
    String sponsers) async {
  return await databases
      .createDocument(
          databaseId: databaseId,
          collectionId: "65ea0edbdc577bb273b1",
          documentId: ID.unique(),
          data: {
            "name": name,
            "description": desc,
            "image": image,
            "location": location,
            "datetime": datetime,
            "createdBy": createdBy,
            "isInPerson": isInPersonOrNot,
            "guests": guest,
          })
      .then((value) => print("Event Created"))
      .catchError((e) => print(e));
}

// Read all Events
Future getAllEvents() async {
  try {
    final data = await databases.listDocuments(
        databaseId: databaseId, collectionId: "65ea0edbdc577bb273b1");
    return data.documents;
  } catch (e) {
    print(e);
  }
}
