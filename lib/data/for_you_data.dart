import 'all_webtoons_data.dart';

List data = AllWebtoonsData.allWebtoonsDataList;

class ForYouData {
  static List newUserRecommendation = [
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "description": data[0]['description'],
      "id": data[0]['id'],
    },
    {
      "image": data[1]['image'],
      "title": data[1]['title'],
      "description": data[1]['description'],
      "id": data[1]['id'],
    },
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "description": data[2]['description'],
      "id": data[2]['id'],
    },
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "description": data[3]['description'],
      "id": data[3]['id'],
    },
  ];
  static List mySeries = [
    {
      "image": data[5]['image'],
      "title": data[5]['title'],
      "description": data[5]['description'],
      "id": data[5]['id'],
    },
    {
      "image": data[4]['image'],
      "title": data[4]['title'],
      "description": data[4]['description'],
      "id": data[4]['id'],
    },
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "description": data[3]['description'],
      "id": data[3]['id'],
    },
  ];
  static List topSeriesForYou = [
    {
      "image": data[1]['image'],
      "title": data[1]['title'],
      "genre": data[1]['genre'],
      "id": data[1]['id'],
    },
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "genre": data[0]['genre'],
      "id": data[0]['id'],
    },
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "genre": data[3]['genre'],
      "id": data[3]['id'],
    },
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "genre": data[2]['genre'],
      "id": data[2]['id'],
    },
    {
      "image": data[5]['image'],
      "title": data[5]['title'],
      "genre": data[5]['genre'],
      "id": data[5]['id'],
    },
  ];

  static List genreSliceOfLife = [
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "genre": data[3]['genre'],
      "id": data[3]['id'],
    },
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "genre": data[2]['genre'],
      "id": data[2]['id'],
    },
    {
      "image": data[1]['image'],
      "title": data[1]['title'],
      "genre": data[1]['genre'],
      "id": data[1]['id'],
    },
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "genre": data[0]['genre'],
      "id": data[0]['id'],
    },
  ];

  static List genreComedy = [
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "genre": data[3]['genre'],
      "id": data[3]['id'],
    },
    {
      "image": data[5]['image'],
      "title": data[5]['title'],
      "genre": data[5]['genre'],
      "id": data[5]['id'],
    },
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "genre": data[2]['genre'],
      "id": data[2]['id'],
    },
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "genre": data[0]['genre'],
      "id": data[0]['id'],
    },
  ];

  static List genreDrama = [
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "genre": data[2]['genre'],
      "id": data[2]['id'],
    },
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "genre": data[0]['genre'],
      "id": data[0]['id'],
    },
    {
      "image": data[1]['image'],
      "title": data[1]['title'],
      "genre": data[1]['genre'],
      "id": data[1]['id'],
    },
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "genre": data[3]['genre'],
      "id": data[3]['id'],
    },
  ];

  static List genreFantasy = [
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "genre": data[3]['genre'],
      "id": data[3]['id'],
    },
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "genre": data[2]['genre'],
      "id": data[2]['id'],
    },
    {
      "image": data[1]['image'],
      "title": data[1]['title'],
      "genre": data[1]['genre'],
      "id": data[1]['id'],
    },
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "genre": data[0]['genre'],
      "id": data[0]['id'],
    },
  ];

  static List genreRomance = [
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "genre": data[0]['genre'],
      "id": data[0]['id'],
    },
    {
      "image": data[5]['image'],
      "title": data[5]['title'],
      "genre": data[5]['genre'],
      "id": data[5]['id'],
    },
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "genre": data[2]['genre'],
      "id": data[2]['id'],
    },
    {
      "image": data[5]['image'],
      "title": data[5]['title'],
      "genre": data[5]['genre'],
      "id": data[5]['id'],
    },
  ];

  static List<String> otherCategories = [
    "Daily",
    "Ranking",
    "Genres",
    "Settings",
    "Notice",
  ];
}
