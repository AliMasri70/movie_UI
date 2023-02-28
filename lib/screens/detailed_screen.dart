import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/home/castandcrew.dart';
import 'package:movie_info_app/screens/home/genres_In_Details.dart';
import 'package:movie_info_app/screens/home/plot_summary.dart';
import 'package:movie_info_app/screens/home/title_duration_with_button.dart';
import 'package:movie_info_app/screens/image_With_Back_Rate.dart';

class DetailedScreen extends StatelessWidget {
  DetailedScreen({super.key, required this.movie});

  Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(child: bodyDetailed(size: size, movie: movie));
  }
}

class bodyDetailed extends StatelessWidget {
  const bodyDetailed({
    super.key,
    required this.size,
    required this.movie,
  });

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          imageWithBackandRate(size: size, movie: movie),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleDurationAndFButton(movie: movie),
          const SizedBox(
            height: kDefaultPadding / 4,
          ),
          genresInDetails(movie: movie),
          const SizedBox(
            height: kDefaultPadding,
          ),
          plotSummary(movie: movie),
          const SizedBox(
            height: kDefaultPadding,
          ),
          CastAndCrewMain(movie: movie),
        ],
      ),
    );
  }
}
