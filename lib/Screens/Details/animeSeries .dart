// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:firbase_signup_signin/Constant.dart/colors.dart';
import 'package:firbase_signup_signin/Screens/Details.dart';
import 'package:flutter/material.dart';

import '../../Background/aniBc.dart';
import '../../widgets/animeseries.dart';

class AnimeSeriesScreen extends StatefulWidget {
  const AnimeSeriesScreen({super.key});

  @override
  State<AnimeSeriesScreen> createState() => _AnimeSeriesScreenState();
}

class _AnimeSeriesScreenState extends State<AnimeSeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: cblack2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Anime Series",
          style: TextStyle(),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: .5,
        surfaceTintColor: cred,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Stack(
        children: [
          AnimatingBg6(),

          Container(
            width: double.infinity,
            child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  AnimeSeriesContaier(
                    KImage:
                        "https://cdn.anime-planet.com/anime/primary/naruto-special-1-find-the-crimson-four-leaf-clover-1.jpg?t=1625766861",
                    KEpisodes: "7",
                    KMovie: "Naruto \nFour-leaf Clover",
                    KStar4: Icons.star_border,
                    KStar5: Icons.star_border,
                    Kroute: DetailsScreen(
                      Ktitle: "Naruto Clover",
                    ),
                  ),
                  AnimeSeriesContaier(
                    KImage:
                        "https://cdn.anime-planet.com/anime/primary/attack-on-titan-the-final-season-part-ii-1.webp?t=1640076824",
                    KEpisodes: "12",
                    KMovie: "Attack on Titan",
                    KStar4: Icons.star,
                    KStar5: Icons.star,
                    Kroute: DetailsScreen(
                      Ktitle: "Attack on Titan",
                    ),
                  ),
                  AnimeSeriesContaier(
                    KImage:
                        "https://cdn.anime-planet.com/anime/primary/demon-slayer-kimetsu-no-yaiba-movie-mugen-train-1.jpg?t=1625788462",
                    KEpisodes: "55",
                    KMovie: "Demon Slayer",
                    KStar4: Icons.star,
                    KStar5: Icons.star_half,
                    Kroute: DetailsScreen(
                      Ktitle: "Demon Slayer",
                    ),
                  ),
                  AnimeSeriesContaier(
                    KImage:
                        "https://cdn.anime-planet.com/anime/primary/sword-of-the-stranger-1.jpg?t=1625767749  ",
                    KEpisodes: "22",
                    KMovie: "Sword of\nthe Stranger",
                    KStar4: Icons.star,
                    KStar5: Icons.star_border,
                    Kroute: DetailsScreen(
                      Ktitle: "Sword the Stranger",
                    ),
                  ),
                  AnimeSeriesContaier(
                    KImage:
                        "https://cdn.anime-planet.com/anime/primary/ninja-scroll-1.jpg?t=1625728745",
                    KEpisodes: "9",
                    KMovie: "Ninja Scroll",
                    KStar4: Icons.star_half,
                    KStar5: Icons.star_border,
                    Kroute: DetailsScreen(
                      Ktitle: "Ninja Scroll",
                    ),
                  ),
                  AnimeSeriesContaier(
                    KImage:
                        "https://cdn.anime-planet.com/anime/primary/shigurui-death-frenzy-1.jpg?t=1625767072",
                    KEpisodes: "12",
                    KMovie: "Shigurui\nDeath Frenzy",
                    KStar4: Icons.star_half,
                    KStar5: Icons.star_border,
                    Kroute: DetailsScreen(
                      Ktitle: "Death Frenz",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
