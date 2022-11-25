import 'package:netflix_clone_app/core/strings.dart';
import 'package:netflix_clone_app/infrastucture/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
}
