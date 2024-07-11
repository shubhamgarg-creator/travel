// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glassmorphism/glassmorphism.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  bool canhelp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DraggableScrollableSheet(
            initialChildSize: 0.94,
            minChildSize: 0.94,
            maxChildSize: 0.94,
            snapAnimationDuration: const Duration(seconds: 2),
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink.withOpacity(0.1),
                      Colors.blue.withOpacity(0.1),
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, bottom: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                          ),
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
                                  "Travel",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Black',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    height: 0,
                                  ),
                                ).animate().fade(
                                    delay: const Duration(milliseconds: 50)),
                                const Text(
                                  "5 new\nsuggestions",
                                  style: TextStyle(
                                    fontSize: 25,
                                    height: 0,
                                    fontFamily: '',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),
                                ).animate().fade(
                                    delay: const Duration(milliseconds: 50)),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.search,
                              ),
                            ).animate().slideX(
                                begin: 1,
                                delay: const Duration(milliseconds: 50)),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "New Suggestions will be\nadded here.",
                          style: TextStyle(
                            fontSize: 15,
                            height: 0,
                            fontFamily: 'Semibold',
                            color: Colors.grey,
                          ),
                        ).animate().slideX(
                              delay: const Duration(
                                milliseconds: 50,
                              ),
                            ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1720377336532-d13307903e43?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                width: MediaQuery.of(context).size.width * 1,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ).animate().slideX(
                                begin: 1,
                                delay: const Duration(
                                  milliseconds: 200,
                                ),
                                duration: const Duration(milliseconds: 600)),
                            Positioned(
                              bottom: -215,
                              right: 0,
                              left: 0,
                              child: GlassmorphicContainer(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(20),
                                //   color: Colors.white,
                                //   shape: BoxShape.rectangle,
                                // ),

                                blur: 5,
                                border: .5,

                                borderGradient: const LinearGradient(
                                    colors: [Colors.white, Colors.white]),
                                height:
                                    MediaQuery.of(context).size.height * 0.34,
                                borderRadius: 20,
                                linearGradient: LinearGradient(colors: [
                                  Colors.white.withOpacity(0.2),
                                  Colors.white.withOpacity(0.2),
                                ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Show me flight options to NY",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 18,
                                                      backgroundImage:
                                                          NetworkImage(
                                                        "https://logowik.com/content/uploads/images/air-canada-icon7054.logowik.com.webp",
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "New York",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                        Text(
                                                          "from \$1,300",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 25,
                                                        vertical: 5),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    15,
                                                  ),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 8,
                                                        ),
                                                        const CircleAvatar(
                                                          radius: 3,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          height: 50,
                                                          width: 2,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const CircleAvatar(
                                                          radius: 3,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                      ],
                                                    ),
                                                    const Column(
                                                      children: [
                                                        Text(
                                                          "LHR",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Loandon",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Aug 24, 4:30 PM",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily: '',
                                                            fontSize: 10,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          "JFK",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Text(
                                                          "New York",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Aug 24, 8:30 PM",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily: '',
                                                            fontSize: 10,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 18,
                                                      backgroundImage:
                                                          NetworkImage(
                                                        "https://i.pinimg.com/736x/bb/e3/ee/bbe3ee0cda221d0c1e4963a78a0adf7f.jpg",
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "New York",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                        Text(
                                                          "from \$1,260",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 25,
                                                        vertical: 5),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    15,
                                                  ),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 8,
                                                        ),
                                                        const CircleAvatar(
                                                          radius: 3,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          height: 50,
                                                          width: 2,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const CircleAvatar(
                                                          radius: 3,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                      ],
                                                    ),
                                                    const Column(
                                                      children: [
                                                        Text(
                                                          "LHR",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Loandon",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Aug 24, 4:30 PM",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily: '',
                                                            fontSize: 10,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          "JFK",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Text(
                                                          "New York",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Aug 24, 8:30 PM",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily: '',
                                                            fontSize: 10,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ).animate().slideY(
                                  begin: 1,
                                  delay: const Duration(
                                    milliseconds: 100,
                                  ),
                                  duration: const Duration(
                                    milliseconds: 600,
                                  ),
                                ),
                          ],
                        ),
                        const SizedBox(
                          height: 190,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            GlassmorphicContainer(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(
                                top: 20,
                                left: 10,
                                right: 10,
                              ),
                              padding: const EdgeInsets.all(10),
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(20),
                              //   color: Colors.white,
                              //   shape: BoxShape.rectangle,
                              // ),

                              blur: 5,
                              border: .5,

                              borderGradient: const LinearGradient(
                                  colors: [Colors.black26, Colors.black26]),
                              height: MediaQuery.of(context).size.height * 0.29,
                              borderRadius: 20,
                              linearGradient: LinearGradient(colors: [
                                Colors.white.withOpacity(0.2),
                                Colors.white.withOpacity(0.2),
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 10),
                                child: Column(children: [
                                  const Text(
                                    "Here is the cheapest flight from Loandon Heathrow Airport to New York John F. Kennedy International Airport",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "LHR",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Bold',
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor: Colors.black
                                                      .withOpacity(0.5),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  height: 1,
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor: Colors.black
                                                      .withOpacity(0.5),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text(
                                                  "JFK",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Bold',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Positioned(
                                              bottom: 10,
                                              left: 0,
                                              right: 0,
                                              child: Icon(
                                                Icons.flight_takeoff_rounded,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "11:20 AM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: '',
                                                fontSize: 9,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                            Text(
                                              "9h 40m",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: '',
                                                fontSize: 9,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                            Text(
                                              "02:05 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: '',
                                                fontSize: 9,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const ListTile(
                                          contentPadding:
                                              EdgeInsets.only(left: 0),
                                          leading: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              'https://i.pinimg.com/736x/bb/e3/ee/bbe3ee0cda221d0c1e4963a78a0adf7f.jpg',
                                            ),
                                          ),
                                          title: Text(
                                            "26 Aug",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                          trailing: Text(
                                            "\$400.23",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      elevation: 1,
                                      color: Colors.white,
                                      child: SizedBox(
                                        height: 35,
                                        width: 150,
                                        child: Center(
                                          child: Text(
                                            "Suggestions",
                                            style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 13,
                                              fontFamily: 'Semibold',
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: -155,
                              left: 0,
                              right: 0,
                              child: canhelp
                                  ? Center(
                                      child: SizedBox(
                                        height: 150,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            GlassmorphicContainer(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.43,
                                              padding: const EdgeInsets.all(10),
                                              // decoration: BoxDecoration(
                                              //   borderRadius: BorderRadius.circular(20),
                                              //   color: Colors.white,
                                              //   shape: BoxShape.rectangle,
                                              // ),

                                              blur: 5,
                                              border: .5,

                                              borderGradient:
                                                  const LinearGradient(colors: [
                                                Colors.black12,
                                                Colors.black12
                                              ]),
                                              height: 150,
                                              borderRadius: 20,
                                              linearGradient:
                                                  LinearGradient(colors: [
                                                Colors.white.withOpacity(0.2),
                                                Colors.white.withOpacity(0.2),
                                              ]),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Taxi transfer",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade400,
                                                        fontSize: 13,
                                                        fontFamily: 'Medium',
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "to ",
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey.shade400,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Medium',
                                                          ),
                                                        ),
                                                        const Text(
                                                          "Airport London",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontFamily: 'Bold',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10,
                                                          ),
                                                          child: Image.network(
                                                            'https://fortune.com/img-assets/wp-content/uploads/2015/06/img_2994.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.25,
                                                            height: 60,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                        const Column(
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundImage:
                                                                  NetworkImage(
                                                                'https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D',
                                                              ),
                                                            ),
                                                            CircleAvatar(
                                                              backgroundColor:
                                                                  Colors.black,
                                                              child: Icon(
                                                                Icons.done,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GlassmorphicContainer(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.43,
                                              padding: const EdgeInsets.all(10),
                                              // decoration: BoxDecoration(
                                              //   borderRadius: BorderRadius.circular(20),
                                              //   color: Colors.white,
                                              //   shape: BoxShape.rectangle,
                                              // ),

                                              blur: 5,
                                              border: .5,

                                              borderGradient:
                                                  const LinearGradient(colors: [
                                                Colors.black12,
                                                Colors.black12
                                              ]),
                                              height: 150,
                                              borderRadius: 20,
                                              linearGradient:
                                                  LinearGradient(colors: [
                                                Colors.white.withOpacity(0.2),
                                                Colors.white.withOpacity(0.2),
                                              ]),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Book a",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade400,
                                                        fontSize: 13,
                                                        fontFamily: 'Medium',
                                                      ),
                                                    ),
                                                    const Row(
                                                      children: [
                                                        Text(
                                                          "Piaza New York Hotel",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 12,
                                                            fontFamily: 'Bold',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10,
                                                          ),
                                                          child: Image.network(
                                                            'https://fortune.com/img-assets/wp-content/uploads/2015/06/img_2994.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.37,
                                                            height: 60,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animate().slideY(
                                          begin: -0.2,
                                          duration: const Duration(
                                              milliseconds: 200)),
                                    )
                                  : const SizedBox(),
                            ),
                            Positioned(
                              bottom: -15,
                              right: 20,
                              child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  setState(() {
                                    canhelp = !canhelp;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  width: canhelp ? 30 : 110,
                                  height: 30,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: canhelp
                                      ? const Icon(
                                          Icons.remove_circle_outlined,
                                          color: Colors.black,
                                        )
                                      : const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "I can help",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Icon(
                                              Icons.add_circle_outlined,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: !canhelp ? 25 : 170,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Here is the best hotels to\nhave a holiday in New York",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 145,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0XFFf2f0eb),
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                      ),
                                      margin: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      height: 100,
                                      width: 150,
                                      padding: const EdgeInsets.all(5),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                  'https://images.unsplash.com/photo-1566073771259-6a8506099945?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                            ),
                                            const Text(
                                              "The Pizza",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Row(
                                              children: [
                                                Text(
                                                  "From \$ 1250",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 10,
                                                ),
                                              ],
                                            ),
                                          ]),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ).animate().slideY(
                              begin: 1,
                              delay: const Duration(
                                milliseconds: 100,
                              ),
                              duration: const Duration(
                                milliseconds: 600,
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
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
        ],
      ),
    );
  }
}
