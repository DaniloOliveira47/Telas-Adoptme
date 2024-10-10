import 'package:flutter/material.dart';
import 'package:project/widgets/cardPet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffE9ECF4),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 20, left: 23, right: 23),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            size: 45,
                          ),
                          Image.asset(
                            "assets/images/Mypet.png",
                            height: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/Mulher.png",
                                height: 40,
                              ),
                            )),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                          color: Color(0xff909090),
                                          fontSize: 17),
                                    ),
                                    Image.asset("assets/images/V.png")
                                  ],
                                ),
                                Text(
                                  "Jakarta",
                                  style: TextStyle(
                                      fontFamily: 'Baloo_Thambi_2',
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  "assets/images/notifications.png",
                                  height: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Color(0xff909090), fontSize: 15),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.search,
                                    size: 29,
                                    color: Color(0xff909090),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  "assets/images/ajustes.png",
                                  height: 25,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.0,
                                offset: Offset(0.9, 5))
                          ],
                          color: Color(0xffFEB05F),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset("assets/images/cat.png"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.0,
                                offset: Offset(0.9, 5))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset("assets/images/dog.png"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.0,
                                offset: Offset(0.9, 5))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset("assets/images/bird.png"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.0,
                                offset: Offset(0.9, 5))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset("assets/images/coelho.png"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.0,
                                offset: Offset(0.9, 5))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset("assets/images/peixe.png"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [cardPet(), cardPet()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardPet(),
                    
                    cardPet(),
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
                child: Image.asset("assets/images/coracao.png")),
          ),
        ],
      ),
    );
  }
}
