
import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';

class plotSummary extends StatelessWidget {
  const plotSummary({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Plot Summary",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              "${movie.plot}",
              style: TextStyle(color: Colors.black.withOpacity(0.7)),
            )
          ],
        ),
      ),
    );
  }
}
