// ignore_for_file: file_names

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travel/Screen/TravelScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            size: 15,
                            color: Colors.blue.shade900,
                          ),
                          Text(
                            "Invite",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0XFFf2f0eb),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0XFFf2f0eb),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0XFFf2f0eb),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.42,
              minChildSize: 0.3,
              maxChildSize: 0.88,
              snapAnimationDuration: const Duration(seconds: 2),
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0XFFf2f0eb),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "5 Tasks",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontFamily: 'Bold',
                                      letterSpacing: 0.5,
                                      height: 0,
                                    ),
                                  ).animate().slideX(),
                                  const Text(
                                    "Good Morning",
                                    style: TextStyle(
                                      fontSize: 13,
                                      height: 0,
                                      fontFamily: 'Semibold',
                                      color: Colors.grey,
                                    ),
                                  ).animate().slideX(),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.search,
                                ),
                              ).animate().slideX(begin: 1),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width * 0.4,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                      ),
                                      child: const Text(
                                        "12 min",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Semibold',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://static.vecteezy.com/system/resources/previews/019/136/322/non_2x/amazon-logo-amazon-icon-free-free-vector.jpg",
                                      ),
                                    )),
                              ),
                              Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width * 0.32,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "15 C",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: '',
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 0.5,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          "Cloudy",
                                          style: TextStyle(
                                            fontSize: 12,
                                            height: 0,
                                            fontFamily: 'Semibold',
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.network(
                                      "https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png",
                                      width: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ).animate().fadeIn(
                                duration: const Duration(
                                  seconds: 1,
                                ),
                              ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 160,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: OpenContainer(
                                        closedElevation: 0,
                                        transitionType:
                                            ContainerTransitionType.fade,
                                        transitionDuration:
                                            const Duration(milliseconds: 800),
                                        openBuilder: (BuildContext context,
                                            VoidCallback _) {
                                          return const TravelScreen();
                                        },
                                        closedShape:
                                            const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(25),
                                          ),
                                        ),
                                        closedBuilder: (BuildContext context,
                                            void Function() action) {
                                          return TweenAnimationBuilder(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration:
                                                const Duration(seconds: 1),
                                            builder: (context, double opacity,
                                                child) {
                                              return Opacity(
                                                opacity: opacity,
                                                child: child,
                                              );
                                            },
                                            child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                width: 175,
                                                height: 160,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const Text(
                                                                  "Travel",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          22,
                                                                      letterSpacing:
                                                                          0.5),
                                                                ),
                                                                index.isOdd
                                                                    ? const CircleAvatar(
                                                                        radius:
                                                                            4,
                                                                        backgroundColor:
                                                                            Colors.red,
                                                                      )
                                                                    : const SizedBox()
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            const Text(
                                                              "Birthday Party Check",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black54,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                CircleAvatar(
                                                                  radius: 3,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "Gift",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                CircleAvatar(
                                                                  radius: 3,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "Music",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                CircleAvatar(
                                                                  radius: 3,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "Restaurants",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      right: 0,
                                                      child: CircleAvatar(
                                                        radius: 17,
                                                        backgroundColor: Colors
                                                            .grey.shade300,
                                                        child: const Icon(
                                                          Icons.bookmark,
                                                          color: Colors.black,
                                                          size: 18,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ).animate().slideY(
                              begin: 1,
                              end: 0,
                              duration: const Duration(milliseconds: 700)),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                25,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Finance",
                                      style: TextStyle(
                                          fontSize: 22, letterSpacing: 0.5),
                                    ),
                                    CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.red,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: MediaQuery.of(context).size.width *
                                          0.32,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(
                                            15,
                                          ),
                                          bottomLeft: Radius.circular(
                                            15,
                                          ),
                                        ),
                                      ),
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 10),
                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            CircleAvatar(
                                              radius: 12,
                                              backgroundColor: Colors.white,
                                              child: Image.network(
                                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Apple_logo_grey.svg/202px-Apple_logo_grey.svg.png",
                                                height: 15,
                                              ),
                                            ),
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "APPLE",
                                                  style: TextStyle(
                                                    fontFamily: 'Bold',
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  "15698 + USD",
                                                  style: TextStyle(
                                                    fontFamily: '',
                                                    fontSize: 9,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "165",
                                              style: TextStyle(
                                                fontFamily: '',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              "65",
                                              style: TextStyle(
                                                fontFamily: '',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                    Container(
                                      height: 70,
                                      width: MediaQuery.of(context).size.width *
                                          0.48,
                                      decoration: BoxDecoration(
                                        color: Colors.pink.shade300,
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(
                                            15,
                                          ),
                                          bottomRight: Radius.circular(
                                            15,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "0.58 \$",
                                                      style: TextStyle(
                                                        fontFamily: '',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_drop_down_rounded,
                                                      color: Colors.white,
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "+0.83",
                                                  style: TextStyle(
                                                    fontFamily: '',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Transform.flip(
                                                flipX: true,
                                                child: Image.network(
                                                  "https://a.c-dn.net/c/content/dam/publicsites/igcom/uk/images/ContentImage/Pennant.png/jcr:content/renditions/original-size.webp",
                                                  color: Colors.white54,
                                                  height: 45,
                                                ),
                                              ),
                                              Transform.flip(
                                                flipX: false,
                                                child: Image.network(
                                                  "https://a.c-dn.net/c/content/dam/publicsites/igcom/uk/images/ContentImage/Pennant.png/jcr:content/renditions/original-size.webp",
                                                  color: Colors.white54,
                                                  height: 45,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ).animate().slideY(
                              begin: 1,
                              end: 0,
                              duration: const Duration(milliseconds: 750)),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 160,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: OpenContainer(
                                        closedElevation: 0,
                                        transitionType:
                                            ContainerTransitionType.fade,
                                        openBuilder: (BuildContext context,
                                            VoidCallback _) {
                                          return const TravelScreen();
                                        },
                                        closedShape:
                                            const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(25),
                                          ),
                                        ),
                                        closedBuilder: (BuildContext context,
                                            void Function() action) {
                                          return TweenAnimationBuilder(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration:
                                                const Duration(seconds: 1),
                                            builder: (context, double opacity,
                                                child) {
                                              return Opacity(
                                                opacity: opacity,
                                                child: child,
                                              );
                                            },
                                            child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                width: 170,
                                                height: 160,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            const Text(
                                                              "Events",
                                                              style: TextStyle(
                                                                  fontSize: 22,
                                                                  letterSpacing:
                                                                      0.5),
                                                            ),
                                                            index.isOdd
                                                                ? const CircleAvatar(
                                                                    radius: 4,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red,
                                                                  )
                                                                : const SizedBox()
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            image:
                                                                const DecorationImage(
                                                              image:
                                                                  NetworkImage(
                                                                'https://thumbs.dreamstime.com/z/music-banner-event-137560838.jpg',
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      right: 0,
                                                      child: CircleAvatar(
                                                        radius: 17,
                                                        backgroundColor: Colors
                                                            .grey.shade300,
                                                        child: const Icon(
                                                          Icons
                                                              .folder_copy_outlined,
                                                          color: Colors.black,
                                                          size: 18,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ).animate().slideY(
                              begin: 1,
                              end: 0,
                              duration: const Duration(milliseconds: 800)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color(0XFFf2f0eb),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
                right: 10,
              ),
              height: 55,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              padding: const EdgeInsets.only(left: 10),
              child: Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: Image.asset(
                        'assets/images/ai.webp',
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "What do you want?",
                    ),
                  ],
                ),
              ),
            ).animate().slideY(begin: 1, end: 0),
          ],
        ),
      ),
    );
  }
}
