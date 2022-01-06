import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class NetworkHandler {
  static const storage = const FlutterSecureStorage();
  static final client = http.Client();

  /// we can put it on somewhere else
  static void storeToken() async {
    await storage.write(key: "token", value: "abcd12345567");
  }

  static Future<String?> getToken() async {
    String? token = await storage.read(
      key: "token",
    );
    return token;
  }

  static void removeToken() async {
    await storage.delete(
      key: "token",
    );
  }

  static Future<String?> get(String endpoint) async {
    var response = await client.get(buildUrl(endpoint: endpoint));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      // here catch the errror exception code will go
      return null;
    }
  }

  static Uri buildUrl({required String endpoint}) {
    String host =
        "http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api";
    final apiPath = host + "/" + endpoint;
    return Uri.parse(apiPath);
  }
}
