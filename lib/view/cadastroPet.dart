import 'package:flutter/material.dart';

class CadastrarPet extends StatelessWidget {
  const CadastrarPet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 175, 175).withOpacity(0.9), 
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 30,
            left: 145,
            child: Image.asset(
              "assets/images/coracao.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 150,
            right: 160,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 165,
            right: 0,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 150,
            left: 5,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            right: 160,
            top: 770,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 700,
            right: 10,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 690,
            left: 5,
            child: Image.asset(
              "assets/images/Patas.png",
              width: 100,
              height: 100,
            ),
          ),
          // Conteúdo principal
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Image.asset("assets/images/Mypet.png")),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 141, 81, 91),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "Register Pet",
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Baloo_Thambi_2',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: ('Baloo_Thambi_2'),
                                    fontSize: 20,
                                  ),
                                  fillColor: const Color(0xffEFEFEF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Pet Name',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: ('Baloo_Thambi_2'),
                                    fontSize: 20,
                                  ),
                                  fillColor: const Color(0xffEFEFEF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Age',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: ('Baloo_Thambi_2'),
                                    fontSize: 20,
                                  ),
                                  fillColor: const Color(0xffEFEFEF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Sex',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: ('Baloo_Thambi_2'),
                                    fontSize: 20,
                                  ),
                                  fillColor: const Color(0xffEFEFEF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Color',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: ('Baloo_Thambi_2'),
                                    fontSize: 20,
                                  ),
                                  fillColor: const Color(0xffEFEFEF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Weight',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                maxLines: 4,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: ('Baloo_Thambi_2'),
                                    fontSize: 20,
                                  ),
                                  fillColor: const Color(0xffEFEFEF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Description',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 8),
                              child: GestureDetector(
                                onTap: () {
                                 
                                },
                                child: Container(
                                  width: 250,
                                  height: 60,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEF91A1),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Put Up for Adoption", textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Baloo_Thambi_2',
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
    );
  }
}
