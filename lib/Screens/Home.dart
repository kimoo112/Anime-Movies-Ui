// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals__create_immutables, non_constant_identifier_names, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import '../Background/aniBc.dart';
import '../Constant.dart/colors.dart';
import '../widgets/movies.dart';
import '../widgets/searchbar.dart';
import 'Details.dart';
import 'Details/animeMovies.dart';
import 'Details/animeSeries .dart';
import 'Details/trending.dart';
import 'Login/signup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gradient g2 = LinearGradient(
    colors: [
      cyelloww,
      cyellow,
      cred,
    ],
  );
  Gradient g1 = LinearGradient(
    colors: [
      cwhite,
      cyelloww,
    ],
  );
  Gradient original = LinearGradient(
    colors: [
      cwhite,
      Color.fromARGB(255, 233, 220, 220),
    ],
  );

  int Kindx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 56, 56),
      body: Stack(
        children: [
          AnimatingBg6(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "WELCOME TO",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFE9DCDC),
                          ),
                        ),
                 
                        Text(
                          "NARUTO MOVIES",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: cyellow,
                          ),
                        ),
                       
                        SizedBox(
                          height: 10,
                        ),
                        SearchBar(),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientSelectableText(
                              "Trending",
                              gradient: original,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600
                                  // fontWeight: FontWeight.w700,
                                  ),
                              textDirection: TextDirection.ltr,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TrendingScreen()));
                                },
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                      color: cyellow,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                        SizedBox(height: 20),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "NARUTO STORM 3",
                                ),
                                Kname: "NARUTO STORM 3",
                                Kmovie:
                                    "https://th.bing.com/th/id/OIP.Ck9MLNcSMWhEd6Pbb0bRswHaJC?pid=ImgDet&rs=1",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "BOKU ACADEMIA",
                                  Kimage: "https://th.bing.com/th/id/R.da2be53047aa565bb86fd35bb38a532a?rik=vzVyOIrkqfg8FA&riu=http%3a%2f%2fotakudome.com%2fwp-content%2fuploads%2f2017%2f10%2fBoku-no-Hero-Academia-Season-2-Visual.jpg&ehk=SOLAA%2bKoMjPolAz3ShrBc6sT21mWm3m2uwmj8lnilPM%3d&risl=&pid=ImgRaw&r=0",
                                ),
                                Kname: "BOKU ACADEMIA",
                                Kmovie:
                                    "https://a-static.besthdwallpaper.com/boku-no-hero-academia-izuku-midoriya-deku-wallpaper-540x960-12340_191.jpg",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "BERSERR",
                                ),
                                Kname: "BERSERR",
                                Kmovie:
                                    "https://th.bing.com/th/id/R.9c83d9f601c1309134a6893bc203ff14?rik=Bcmoj2zLinSNCQ&riu=http%3a%2f%2fdzt1km7tv28ex.cloudfront.net%2fu%2f245661745643782144_35s_d.jpg&ehk=L8pYS%2fMizKPcpe4wslQE%2bP0mZYZRXmVTi0wzzISVOlE%3d&risl=&pid=ImgRaw&r=0",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientSelectableText(
                              "Anime Movies",
                              gradient: original,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600
                                  // fontWeight: FontWeight.w700,
                                  ),
                              textDirection: TextDirection.ltr,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AnimeMoviesScreen()));
                                },
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                      color: corangee,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                        SizedBox(height: 20),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "IZUKU MIDORIYA",
                                ),
                                Kname: "IZUKU MIDORIYA",
                                Kmovie:
                                    "https://i.pinimg.com/736x/42/50/25/425025980cc194671ad1b887b7abd060.jpg",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "DEKU",
                                ),
                                Kname: "DEKU",
                                Kmovie:
                                    "https://th.bing.com/th/id/OIP.EcKA_xG4_qDupoO9djzGPwHaLc?pid=ImgDet&rs=1",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "PATEMA INVERTED",
                                ),
                                Kname: "PATEMA INVERTED",
                                Kmovie:
                                    "https://66.media.tumblr.com/ac4570e4a8c50b2d93b2c1c087df74a1/tumblr_ocaqpuiwaI1vwjbc4o1_1280.jpg",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientSelectableText(
                              "Anime Series ",
                              gradient: original,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600
                                  // fontWeight: FontWeight.w700,
                                  ),
                              textDirection: TextDirection.ltr,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AnimeSeriesScreen()));
                                },
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                      color: credd,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                        SizedBox(height: 20),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Kimage:"",
                                  Ktitle: "Naruto Clover",
                                ),
                                Kname: "        Naruto \nFour-leaf Clover",
                                Kmovie:
                                    "https://cdn.anime-planet.com/anime/primary/naruto-special-1-find-the-crimson-four-leaf-clover-1.jpg?t=1625766861",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Kimage:"https://cdn.anime-planet.com/anime/screenshot/attack-on-titan-the-final-season-part-ii-6.webp?t=1649029492",
                                  Ktitle: "Attack on Titan",
                                ),
                                Kname: "Attack on Titan",
                                Kmovie:
                                    "https://cdn.anime-planet.com/anime/primary/attack-on-titan-the-final-season-part-ii-1.webp?t=1640076824",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "Demon Slayer",
                                  Kimage:"",
                                ),
                                Kname: "Demon Slayer",
                                Kmovie:
                                    "https://cdn.anime-planet.com/anime/primary/demon-slayer-kimetsu-no-yaiba-movie-mugen-train-1.jpg?t=1625788462",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
//    bottomNavigationBar: MoltenBottomNavigationBar(
//       selectedIndex: Kindx,
//       barColor: corange,

// domeCircleColor: cblack2,
//     onTabChange: (clickedIndex) {
//         setState(() {
//           Kindx = clickedIndex;
//         });
//       },

//       tabs: [
//         MoltenTab(
//                     icon: Icon(Icons.home),

//           title: Text("Home",
//           style: TextStyle(fontSize: 12),),
//             selectedColor: corange,

//             unselectedColor: cblack2

//         ),
//         MoltenTab(
//           icon: Icon(Icons.search),

//           title: Text("Search",
//           style: TextStyle(fontSize: 12),),

//             selectedColor: corange,
//             unselectedColor: cblack2
//         ),
//         MoltenTab(
//           icon: Icon(Icons.person),
//           title: Text("Profile",
//           style: TextStyle(fontSize: 12),),
//             selectedColor: corange,

//             unselectedColor: cblack2

//         ),
//       ],
//    ),
    );
  }
}
