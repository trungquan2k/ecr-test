
class ItemCard {
  final String avatar;
  final String name;
  final String title;
  final String content;
  final String image;
  final String address;
  final String price;
  final DateTime createdAt;
  final DateTime time;
  final String discount;

  ItemCard( {
    required this.image,
    required this.avatar,
    required this.name,
    required this.title,
    required this.content,
    required this.address,
    required this.price,
    required this.createdAt,
    required this.time,
    required this.discount,
  });

  factory ItemCard.fromJson(Map<String, dynamic> json) {
    return ItemCard(
      image: json['image'],
      avatar: json['avatar'],
      name: json['name'],
      title: json['title'],
      content: json['content'],
      address: json['address'],
      price: json['price'],
      createdAt: DateTime.parse(json['createdAt']),
      time: DateTime.parse(json['time']),
      discount: json['discount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'avatar': avatar,
      'name': name,
      'title': title,
      'content': content,
      'address': address,
      'price': price,
      'createdAt': createdAt.toIso8601String(),
      'time': time.toIso8601String(),
      'discount': discount,
    };
  }
}
