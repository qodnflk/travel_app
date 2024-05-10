class PlaceInfo {
  final String image, location1, location2, desc;

  PlaceInfo(
      {required this.image,
      required this.location1,
      required this.location2,
      required this.desc});

  static List places = [
    PlaceInfo(
      image: 'images/Galapagos-Islands.jpeg',
      location1: 'Galapagos',
      location2: 'Chile',
      desc:
          "The Galápagos Islands are an archipelago located northwest of Ecuador in the Pacific Ocean. Comprising volcanic islands, this archipelago is renowned for its biodiversity. Due to the isolation of its environment, various species of flora and fauna have evolved and adapted uniquely, making the Galápagos Islands famous for observing wildlife not found elsewhere.",
    ),
    PlaceInfo(
      image: 'images/Kyoto-Japan.jpeg',
      location1: 'Kyoto',
      location2: 'Japan',
      desc:
          'This temple is famous for one of the notorious buildings of Kinkaku-ji, known as the "Golden Pavilion." It is one of the oldest architectural structures, renowned for its beauty and historical significance. Kinkaku-ji is also famous for its natural beauty, especially as part of the Nitten Dome National Park, which focuses on preserving Japan\'s nature and culture.',
    ),
    PlaceInfo(
        image: 'images/Cinque-Terre-Italy.jpeg',
        location1: 'Cique',
        location2: 'Italy',
        desc:
            "Cinque Terre refers to a region in the Liguria region of Italy consisting of five small villages. \"Cinque Terre\" means \"Five Lands\" in Italian, and the area is known for its five villages perched on cliffs along the coast for thousands of years."),
  ];
}
