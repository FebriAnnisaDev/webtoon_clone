import 'package:flutter/material.dart';
import '../../../shared/util/const.dart';
import '../data/genres_data.dart';

// ignore: must_be_immutable
class SearchView extends StatelessWidget {
  SearchView({super.key});

  List genreData = SharedData.genresData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        child: GridView.count(
          crossAxisCount: 4,
          childAspectRatio: 0.6,
          children: List.generate(genreData.length, (index) {
            return Container(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 50,
                      child: Image.network(
                        genreData[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    genreData[index]['genre'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
