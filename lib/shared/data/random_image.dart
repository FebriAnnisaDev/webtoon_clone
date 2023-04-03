import 'dart:math';

List images = [
  "https://swebtoon-phinf.pstatic.net/20210707_38/1625652460586HO7jD_JPEG/2M_details.jpg?type=crop540_540",
  "https://swebtoon-phinf.pstatic.net/20210729_85/1627553602660ru27E_JPEG/6messageImage_1627553396926.jpg?type=crop540_540",
  "https://cdn.urbandigital.id/wp-content/uploads/2020/08/Cover-Manhwa-School-Life-Webtoon-770x380.png",
  "https://swebtoon-phinf.pstatic.net/20221105_240/1667583143202tfffw_JPEG/4_720x1230_Lookism_landingpage_mobile.jpg?type=crop540_540",
  "https://asset-a.grid.id/crop/0x0:0x0/945x630/photo/2022/10/20/virgjpg-20221020021716.jpg",
  "https://pict.sindonews.net/dyn/620/pena/news/2021/09/09/700/536234/webtoonwebtoon-untuk-pembaca-usia-21-tahun-ke-atas-nvb.jpeg",
  "https://i.pinimg.com/564x/d8/ab/37/d8ab37259cef25c7abab0cf05bb89245.jpg",
  "https://i.pinimg.com/564x/25/31/21/253121e0fba9e9cfd8b693e4e03b4fbd.jpg",
  "https://i.pinimg.com/564x/dd/d4/dd/ddd4dd3f4c198cd66bc7e48bb91fed73.jpg",
];

String getRandomImage() {
  final randomIndex = Random().nextInt(images.length - 1);
  return images[randomIndex];
}

List captions = ["A", "B", "C", "D", "E"];
