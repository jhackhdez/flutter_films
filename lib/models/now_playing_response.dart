import 'dart:convert';
import 'movies.dart';

class NowPlayingResponse {
  final dynamic dates;
  final int page;
  final List<Movie> results;
  final int totalPages;
  final int totalResults;

  NowPlayingResponse({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory NowPlayingResponse.fromJson(String str) =>
      NowPlayingResponse.fromMap(json.decode(str));

  factory NowPlayingResponse.fromMap(Map<String, dynamic> json) =>
      NowPlayingResponse(
        dates: json["dates"],
        page: (json["page"] == null) ? 0 : json["page"],
        results: List<Movie>.from(
            json["results"]?.map((x) => Movie.fromJson(x)) ?? []),
        totalPages: (json["total_pages"] == null) ? 0 : json["total_pages"],
        totalResults:
            (json["total_results"] == null) ? 0 : json["total_results"],
      );
}

class Dates {
  final DateTime maximum;
  final DateTime minimum;

  Dates({
    required this.maximum,
    required this.minimum,
  });

  factory Dates.fromMap(String str) => Dates.fromMap(json.decode(str));

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
      );
}
