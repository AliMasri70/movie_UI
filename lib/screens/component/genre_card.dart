import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    super.key,
    required this.genres,
  });

  final String genres;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 4, horizontal: kDefaultPadding),
      child: Center(child: Text(genres)),
    );
  }
}
