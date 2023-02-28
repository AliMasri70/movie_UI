
import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';

class CastAndCrewMain extends StatelessWidget {
  const CastAndCrewMain({
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
          children: [
            Row(
              children: [
                Text(
                  "Cast & Crew",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                  itemCount: movie.cast.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CastCrewCard(
                        cast: movie.cast[index],
                      )),
            )
          ],
        ),
      ),
    );
  }
}

class CastCrewCard extends StatelessWidget {
  CastCrewCard({super.key, required this.cast});
  Map cast;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 80,
            // width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Image.asset("${cast["image"]}"),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Center(
            child: Text(
              "${cast['orginalName']}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 2,
            ),
          ),
          Center(
            child: Text(
              "${cast['movieName']}",
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextLightColor),
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}
