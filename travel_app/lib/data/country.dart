class Country {
  final String rate;
  final String name;
  final String img;
  final bool like;

  Country(
      {required this.rate,
      required this.name,
      required this.img,
      required this.like});
}

List<Country> list_country = [
  Country(
      rate: '4.5', name: 'Korea', img: 'assets/images/korea.jpg', like: true),
  Country(
      rate: '4.5',
      name: 'Turkey',
      img: 'assets/images/turkey.jpg',
      like: false),
  Country(
      rate: '5.0',
      name: 'VietNam',
      img: 'assets/images/vietnam.webp',
      like: true),
  Country(
      rate: '4.0', name: 'Dubai', img: 'assets/images/dubai.jpg', like: false),
  Country(
      rate: '4.5', name: 'Japan', img: 'assets/images/japan.jpg', like: true)
];
