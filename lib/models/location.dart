import './location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    this.id, 
    this.name, 
    this.imagePath, 
    this.userItinerarySummary,
    this.tourPackageName,
    this.facts,
    });

  static List<Location> fetchAll() {
    return [
 Location(
          id: 1,
          name: 'Tokyo',
          imagePath: 'assets/images/tokyo.jpg',
          userItinerarySummary: 'Capital of Japan',
          tourPackageName: 'Population: 9.273 million (2015)',
          facts: [
            LocationFact('Summary',
                'Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods. The Imperial Palace sits amid large public gardens. The city\'s many museums offer exhibits ranging from classical art (in the Tokyo National Museum) to a reconstructed kabuki theater (in the Edo-Tokyo Museum).'),
            LocationFact('Flight',
            '11 h 50 min flight, from Berlin'),
          ]),
      Location(
          id: 2,
          name: 'Kyoto',
          imagePath: 'assets/images/kyoto.jpg',
          userItinerarySummary: 'City in Japan',
          tourPackageName: 'Population: 1.475 million (2015)',
          facts: [
            LocationFact('Summary',
                'Kyoto, once the capital of Japan, is a city on the island of Honshu. It\'s famous for its numerous classical Buddhist temples, as well as gardens, imperial palaces, Shinto shrines and traditional wooden houses. It\’s also known for formal traditions such as kaiseki dining, consisting of multiple courses of precise dishes, and geisha, female entertainers often found in the Gion district.'),
            LocationFact('Flight',
                '15 h 5 min flight, from Berlin'),
          ]),
      Location(
          id: 3,
          name: 'Osaka',
          imagePath: 'assets/images/osaka.jpg',
          userItinerarySummary: 'City in Japan',
          tourPackageName: 'Population: 2.691 million (2015) ',
          facts: [
            LocationFact('Summary',
                'Osaka is a large port city and commercial center on the Japanese island of Honshu. It\'s known for its modern architecture, nightlife and hearty street food. The 16th-century shogunate Osaka Castle, which has undergone several restorations, is its main historical landmark. It\'s surrounded by a moat and park with plum, peach and cherry-blossom trees. Sumiyoshi-taisha is among Japan’s oldest Shinto shrines.'),
            LocationFact('Frlght',
                '12 h 40 min flight, from Berlin'),
          ]),
    ];
  }

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
