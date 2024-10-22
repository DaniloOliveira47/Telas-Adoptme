import 'package:flutter/material.dart';
import 'package:project/widgets/cardPet.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE9ECF4),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 23),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, size: 45, color: Colors.grey[700]),
                          Image.asset("assets/images/Mypet.png",
                              height: 40, fit: BoxFit.cover),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/Mulher.png",
                                height: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 17),
                        child: Text(
                          "Meus Favoritos",
                          style: TextStyle(
                            fontFamily: 'Baloo_Thambi_2',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cardPet(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cardPet(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cardPet(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cardPet(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 35,
            left: 178,
            child: Container(
              width: 40,
              height: 40,
              child: Image.asset("assets/images/coracao.png"),
            ),
          ),
        ],
      ),
    );
  }
}
