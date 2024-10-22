import 'package:flutter/material.dart';
import 'package:project/widgets/cardMessages.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: -50,
            child: Image.asset("assets/images/pataMaior.png")),
            Positioned(
            top: 300,
            left: 50,
            child: Image.asset("assets/images/pataMaior.png")),
          Positioned(
            top: 90,
            right: -50,
            child: Image.asset("assets/images/pataMaior.png")),
          Positioned(
            top: 500,
            left: -50,
            child: Image.asset("assets/images/pataMaior.png")),
          Positioned(
            top: 650,
            left: 100,
            child: Image.asset("assets/images/pataMaior.png")),
          Positioned(
            top: 450,
            right: -50,
            child: Image.asset("assets/images/pataMaior.png")),
          Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xffE9ECF4),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 3),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back, size: 30),
                        )),
                    Text(
                      "Messages",
                      style: TextStyle(
                        fontFamily: 'Baloo_Thambi_2',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/settings.png"),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 20),
              cardMessages(),
              cardMessages(),
              cardMessages(),
              cardMessages(),
              cardMessages(),
              cardMessages()
            ],
          ),
        ],
      ),
    );
  }
}
