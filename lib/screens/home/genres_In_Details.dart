import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/component/genre_card.dart';

class genresInDetails extends StatelessWidget {
  const genresInDetails({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
            itemCount: movie.genra.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                GenreCard(genres: movie.genra[index])),
      ),
    );
  }
}
