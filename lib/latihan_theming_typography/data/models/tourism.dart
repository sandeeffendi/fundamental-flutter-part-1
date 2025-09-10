class Tourism {
  final int id;
  final String name;
  final String description;
  final String address;
  final double longitude;
  final double latitude;
  final int like;
  final String image;

  Tourism({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.like,
    required this.image,
  });

  factory Tourism.fromJson(Map<String, dynamic> json) {
    return Tourism(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      address: json["address"],
      longitude: json["longitude"],
      latitude: json["latitude"],
      like: json["like"],
      image: json["image"],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "description": description,
      "address": address,
      "longitude": longitude,
      "latitude": latitude,
      "like": like,
      "image": image,
    };
  }
}
