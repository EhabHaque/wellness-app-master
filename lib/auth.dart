import 'package:appwrite/appwrite.dart';

Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('65e8cf8025d7cd15c10a')
    .setSelfSigned(
        status: true); // For self signed certificates, only use for development