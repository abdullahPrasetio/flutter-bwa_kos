class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
    this.numberOfBedrooms,
    this.numberOfKitchens,
    this.numberOfCupboards,
  });

  Space.fromJson(json) {
    id = json["id"];
    name = json["name"];
    city = json["city"];
    country = json["country"];
    imageUrl = json["image_url"];
    price = json["price"];
    rating = json["rating"];
    address = json["address"];
    phone = json["phone"];
    mapUrl = json["map_url"];
    numberOfKitchens = json["number_of_kitchens"];
    numberOfBedrooms = json["number_of_bedrooms"];
    numberOfCupboards = json["number_of_cupboards"];
  }
}
