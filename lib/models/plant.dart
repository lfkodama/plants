enum Environment { sombra, meiasombra, sol }

enum Watering { pouca, moderada, abundante }

enum WeeklyWaterFrequency { uma, duas, tres, todos }

class Plant {
  const Plant({
    required this.id,
    required this.categories,
    required this.popularTitle,
    required this.botanicalTitle,
    required this.otherTitle,
    required this.potImageUrl,
    required this.landImageUrl,
    required this.sizeInPot,
    required this.sizeInLand,
    required this.origin,
    required this.light,
    required this.watering,
    required this.soil,
    required this.climate,
    required this.pruning,
    required this.fertilizing,
    required this.lifecycle,
    required this.portugueseDescription,
    //  required this.spanishDescription,
    //  required this.englishDescription,
    required this.hasFruit,
    required this.hasFlower,
    required this.isPetFriendly,
    required this.toxityDescription,
    required this.environment,
    required this.weeklyWaterFrequency,
  });

  final String id;
  final List<String> categories;
  final String popularTitle;
  final String botanicalTitle;
  final List<String> otherTitle;
  final String potImageUrl;
  final String landImageUrl;
  final String sizeInPot;
  final String sizeInLand;
  final List<String> origin;
  final String light;
  final Watering watering;
  final String soil;
  final String climate;
  final String pruning;
  final String fertilizing;
  final String lifecycle;
  final List<String> portugueseDescription;
  //  final List<String> spanishDescription;
  //  final List<String> englishDescription;
  final bool hasFruit;
  final bool hasFlower;
  final bool isPetFriendly;
  final List<String> toxityDescription;
  final Environment environment;
  final WeeklyWaterFrequency weeklyWaterFrequency;
}
