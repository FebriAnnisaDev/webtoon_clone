import 'all_webtoons_data.dart';

List data = AllWebtoonsData.allWebtoonsDataList;

class MyFavoriteData {
  static List recentData = [
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "author": data[3]['author']
    },
    {
      "image": data[5]['image'],
      "title": data[5]['title'],
      "author": data[5]['author']
    },
  ];
  static List subscribedData = [
    {
      "image": data[2]['image'],
      "title": data[2]['title'],
      "author": data[2]['author']
    },
    {
      "image": data[1]['image'],
      "title": data[1]['title'],
      "author": data[1]['author']
    },
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "author": data[3]['author']
    },
  ];
  static List downloadsData = [
    {
      "image": data[0]['image'],
      "title": data[0]['title'],
      "author": data[0]['author']
    },
  ];
  static List unlockedData = [
    {
      "image": data[3]['image'],
      "title": data[3]['title'],
      "author": data[3]['author']
    },
  ];
  static List creatorsData = [
    {"author": data[5]['author']},
  ];
  static List commentsData = [
    {},
  ];
}
