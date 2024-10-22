import 'package:flutter/material.dart';
import 'package:project/view/login.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            top: 75,
            left: 145,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/coracao.png")),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            top: 150,
            right: 160,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            top: 165,
            right: 0,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            top: 150,
            left: 5,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            right: 160,
            top: 770,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            top: 700,
            right: 10,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Positioned(
            top: 690,
            left: 5,
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Patas.png")),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(90, 220, 228, 241),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 100, bottom: 100, left: 20, right: 20),
              child: Column(
                children: [
                  Center(child: Image.asset("assets/images/Mypet.png")),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFEB05F),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 40, right: 40),
                        child: Column(
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontFamily: 'Baloo_Thambi_2'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 27),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: ('Baloo_Thambi_2'),
                                      fontSize: 21),
                                  fillColor:
                                      const Color.fromARGB(255, 255, 225, 181),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Username',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    filled: true,
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: ('Baloo_Thambi_2'),
                                      fontSize: 21,
                                    ),
                                    fillColor: const Color.fromARGB(
                                        255, 255, 225, 181),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    hintText: 'Email address',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: ('Baloo_Thambi_2'),
                                        fontSize: 21),
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        255, 255, 225, 181),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    hintText: 'Password',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    filled: true,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: ('Baloo_Thambi_2'),
                                        fontSize: 21),
                                    fillColor: const Color.fromARGB(
                                        255, 255, 225, 181),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    hintText: 'Confirm Password',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 8),
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 250, 136, 29),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: ('Baloo_Thambi_2'),
                                          fontSize: 27),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Already have a registration?",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 128, 96, 96),
                          fontFamily: ('Baloo_Thambi_2'),
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 760,
            left: 65,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  width: 290,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 160, 160, 160)),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 23,
                            color: const Color.fromARGB(255, 145, 104, 104)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
