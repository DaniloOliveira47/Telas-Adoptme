import 'package:flutter/material.dart';

class Usuarios extends StatelessWidget {
  const Usuarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(63.7),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfffE9ECF4),
                      borderRadius: BorderRadius.circular(70)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("assets/images/Mulher.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Nila Aprillia",
                    style: TextStyle(
                        fontFamily: 'Baloo_Thambi_2',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: 300,
                    height: 440,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfffE9ECF4)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 45, top: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/images/messages.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 18, left: 15),
                                    child: Text(
                                      "Messages",
                                      style: TextStyle(
                                          fontFamily: 'Baloo_Thambi_2',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 18),
                                    child: Image.asset(
                                        "assets/images/favorite.png"),
                                  ),
                                  Text(
                                    "Favorites",
                                    style: TextStyle(
                                        fontFamily: 'Baloo_Thambi_2',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45, top: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/images/settings.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 25, left: 15),
                                    child: Text(
                                      "Settings",
                                      style: TextStyle(
                                          fontFamily: 'Baloo_Thambi_2',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 21),
                                    child: Image.asset(
                                        "assets/images/notifications.png"),
                                  ),
                                  Text(
                                    "Notifications",
                                    style: TextStyle(
                                        fontFamily: 'Baloo_Thambi_2',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
