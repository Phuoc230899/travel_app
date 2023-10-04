class Hotel {
  final String img;
  final String name;
  final String address;
  final String rate;
  final int reviews;
  final int price;
  final bool favourite;
  final double distance;

  Hotel(
      {required this.img,
      required this.name,
      required this.address,
      required this.rate,
      required this.reviews,
      required this.price,
      required this.favourite,
      required this.distance});
}

List<Hotel> list_hotel = [
  Hotel(
      img: 'assets/images/hotel1.jpg',
      name: 'PQ Luxury Hotel',
      address: 'Hoà An, Cẩm Lệ, Đà Nẵng',
      rate: '3.6',
      reviews: 155,
      price: 280,
      favourite: false,
      distance: 5.0),
  Hotel(
      img: 'assets/images/hotel2.jpg',
      name: 'Hanami Hotel Danang',
      address: 'Ngũ Hành Sơn, Đà Nẵng',
      rate: '4.7',
      reviews: 180,
      price: 220,
      favourite: true,
      distance: 4.0),
  Hotel(
      img: 'assets/images/hotel3.jpg',
      name: 'Khách sạn Samdi',
      address: 'Thạc Gián, Thanh Khê, Đà Nẵng',
      rate: '4.1',
      reviews: 300,
      price: 540,
      favourite: true,
      distance: 2.6),
  Hotel(
      img: 'assets/images/hotel4.jpg',
      name: 'Bamboo Hotel',
      address: 'Hải Châu, Đà Nẵng',
      rate: '4.1',
      reviews: 15,
      price: 267,
      favourite: false,
      distance: 3.6),
  Hotel(
      img: 'assets/images/hotel5.jpeg',
      name: 'Santori Hotel Danang Bay',
      address: 'Xuân Hà, Thanh Khê, Đà Nẵng',
      rate: '4.5',
      reviews: 155,
      price: 533,
      favourite: false,
      distance: 0.8),
];
