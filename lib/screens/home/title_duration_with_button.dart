import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';

class TitleDurationAndFButton extends StatelessWidget {
  const TitleDurationAndFButton({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "${movie.title}",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${movie.year}",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Text(
                      "2h 32min",
                      style: TextStyle(color: kTextLightColor),
                    )
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 64,
                width: 64,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: kSecondaryColor,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
