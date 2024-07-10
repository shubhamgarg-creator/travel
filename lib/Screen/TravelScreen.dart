// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
      body: DraggableScrollableSheet(
        initialChildSize: 0.94,
        minChildSize: 0.94,
        maxChildSize: 0.94,
        snapAnimationDuration: const Duration(seconds: 2),
        builder: (BuildContext context, ScrollController scrollController) {
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
                            ).animate().slideX(
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
                            ).animate().slideX(
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
                            begin: 1, delay: const Duration(milliseconds: 50)),
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
                          bottom: -340,
                          right: 0,
                          left: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white54,
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 18,
                                                backgroundImage: NetworkImage(
                                                  "https://logowik.com/content/uploads/images/air-canada-icon7054.logowik.com.webp",
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(
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
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                      color: Colors.black54,
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
                                                      color: Colors.black54,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 18,
                                                backgroundImage: NetworkImage(
                                                  "https://i.pinimg.com/736x/bb/e3/ee/bbe3ee0cda221d0c1e4963a78a0adf7f.jpg",
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(
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
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                      color: Colors.black54,
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
                                                      color: Colors.black54,
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
                                Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        color: const Color(0XFFf2f0eb),
                                        height: 3,
                                        width: 70,
                                      ),
                                      Card(
                                        margin: EdgeInsets.zero,
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        elevation: 0,
                                        color: const Color(0XFFf2f0eb),
                                        child: const SizedBox(
                                          height: 20,
                                          width: 150,
                                          child: Center(
                                            child: Text(
                                              "Suggestions",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 9,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: const Color(0XFFf2f0eb),
                                        height: 3,
                                        width: 70,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
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
                                    color: const Color(0XFFf2f0eb),
                                    borderRadius: BorderRadius.circular(10),
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
                              ],
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
                      height: 330,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
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
                                      borderRadius: BorderRadius.circular(15)),
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
