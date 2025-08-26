import 'tourism.dart';

class TourismListResponse {
  final bool error;
  final String message;
  final int count;
  final List<Tourism> places;

  TourismListResponse({
    required this.error,
    required this.message,
    required this.count,
    required this.places,
  });

  factory TourismListResponse.fromJson(Map<String, dynamic> json) =>
      TourismListResponse(
        error: json["error"],
        message: json["message"],
        count: json["count"],
        places: List<Tourism>.from(json["places"]!.map((x) => Tourism.fromJson(x))),
      );
}
