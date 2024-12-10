import 'package:flutter/material.dart';
import 'package:project/view/cadastroPet.dart';
import 'package:project/view/favoritos.dart';
import 'package:project/view/home.dart';
import 'package:project/view/message.dart';
import 'package:project/view/usuario.dart';

class ControleTelas extends StatefulWidget {
  const ControleTelas({super.key});

  @override
  State<ControleTelas> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<ControleTelas> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Mypets(),
    const CadastrarPet(),
    MessagesScreen(),
    const Usuarios()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 85,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/home.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/favorite.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffEF91A1)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset("assets/images/add.png"),
                    )),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/messages.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/usuario.png"),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            backgroundColor: Color.fromARGB(255, 229, 232, 240),
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
