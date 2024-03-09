import 'package:appwrite/appwrite.dart';
import 'database.dart';
import 'saved_data.dart';

Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('65e8cf7ac9881d2098c3')
    .setSelfSigned(
        status: true); // For self signed certificates, only use for development


