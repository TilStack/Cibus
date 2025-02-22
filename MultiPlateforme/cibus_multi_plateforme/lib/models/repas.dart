class Repas {
  final int repas_id;
  final int restaurant_id;
  final int category_id;
  final String nom;
  final String image;
  final String description;
  final double price;
  final double rating;

  Repas(
      {required this.repas_id,
      required this.restaurant_id,
      required this.category_id,
      required this.nom,
      required this.image,
      required this.description,
      required this.price,
      required this.rating});

  factory Repas.fromJson(dynamic json) {
    return Repas(
        repas_id: json['repas_id'] as int,
        restaurant_id: json['restaurant_id'] as int,
        category_id: json['category_id'] as int,
        nom: json['nom'] as String,
        image: json['image'] as String,
        description: json['description'] as String,
        price: json['prix'] as double,
        rating: json['rating'] as double);
  }
  static List<Repas> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) => Repas.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'Restaurant {name: $nom, image: $image, rating: $rating, description: $description}';
  }
}
