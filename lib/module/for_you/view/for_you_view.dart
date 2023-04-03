import 'package:clone_webtoon/module/for_you_my_series/view/for_you_my_series.dart';
import 'package:flutter/material.dart';
import 'package:clone_webtoon/core.dart';
import '../controller/for_you_view_controller.dart';
import '../../for_you_favorite_genres/view/for_you_favorite_genres.dart';
import '../../for_you_find_your_series/view/for_you_find_your_series.dart';
import '../../for_you_genres_recommendation/view/for_you_genres_recommendation.dart';
import '../../for_you_new_here/view/for_you_new_here_view.dart';
import '../../for_you_ongoing_events/view/for_you_ongoing_events.dart';
import '../../for_you_other_categories/view/for_you_other_categories.dart';
import '../../for_you_social_media_buttons/view/social_media_buttons.dart';
import '../../../shared/widget/top_series/view/top_series.dart';
import 'package:clone_webtoon/data/for_you_data.dart';

// ignore: must_be_immutable
class ForYouView extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ForYouView({Key? key}) : super(key: key);

  Widget build(context, ForYouViewController controller) {
    controller.view = this;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 20.0,
                color: const Color.fromRGBO(48, 48, 48, 100),
              ),
              const ForYouNewHereView(),
              const SizedBox(
                height: 20.0,
              ),
              ForYouMySeries(),
              const ForYouOngoingEvents(),
              TopSeries(
                genre: "",
                dataList: ForYouData.topSeriesForYou,
              ),
              ForYouGenresRecommendation(
                genre: "Slice of Life",
                dataList: ForYouData.genreSliceOfLife,
              ),
              const SizedBox(
                height: 40.0,
              ),
              ForYouGenresRecommendation(
                genre: "Comedy",
                dataList: ForYouData.genreComedy,
              ),
              const SizedBox(
                height: 40.0,
              ),
              ForYouGenresRecommendation(
                genre: "Drama",
                dataList: ForYouData.genreDrama,
              ),
              const SizedBox(
                height: 40.0,
              ),
              ForYouGenresRecommendation(
                genre: "Fantasy",
                dataList: ForYouData.genreFantasy,
              ),
              const SizedBox(
                height: 40.0,
              ),
              ForYouGenresRecommendation(
                genre: "Romance",
                dataList: ForYouData.genreRomance,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ForYouFavoriteGenres(),
              const SizedBox(
                height: 10.0,
              ),
              const ForYouFindYourSeries(),
              const ForYouOtherCategories(
                categoryName: "Daily",
              ),
              const ForYouOtherCategories(categoryName: "Ranking"),
              const ForYouOtherCategories(categoryName: "Genres"),
              const ForYouOtherCategories(categoryName: "Settings"),
              const Divider(
                thickness: 0.8,
              ),
              const ForYouOtherCategories(categoryName: "Notice"),
              const SizedBox(
                height: 20.0,
              ),
              const ForYouSocialMediaButtons(),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[600]!,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Share WEBTOON",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ForYouView> createState() => ForYouViewController();
}
