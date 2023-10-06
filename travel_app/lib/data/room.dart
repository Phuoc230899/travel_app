class Room {
  final String name;
  final String img;
  final int size;
  final bool refund;
  final int price;

  Room(
      {required this.name,
      required this.img,
      required this.size,
      required this.refund,
      required this.price});
}

List<Room> list_room = [
  Room(
      name: 'Deluxe',
      img: 'assets/images/room1.jpeg',
      size: 27,
      refund: false,
      price: 245),
  Room(
      name: 'Executive Suite',
      img: 'assets/images/hotel2.jpg',
      size: 32,
      refund: true,
      price: 289),
  Room(
      name: 'King Bed Only Room',
      img: 'assets/images/hotel1.jpg',
      size: 24,
      refund: true,
      price: 214)
];
