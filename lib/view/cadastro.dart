import 'package:flutter/material.dart';
import 'package:project/model/Usuario.dart';
import 'package:project/view/login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Cadastro extends StatelessWidget {
  final TextEditingController _controladorUsername = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorPhone = TextEditingController();
  final TextEditingController _controladorPassword = TextEditingController();
  final TextEditingController _controladorConfirmpassword =
      TextEditingController();

  Cadastro({super.key});

  Future<void> registrarUsuario(BuildContext context) async {
    final String username = _controladorUsername.text;
    final String email = _controladorEmail.text;
    final String phone = _controladorPhone.text;
    final String password = _controladorPassword.text;
    final String confirmpassword = _controladorConfirmpassword.text;

    if (username.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Preencha todos os campos!")),
      );
      return;
    }

    final Map<String, dynamic> usuarioJson = {
      "name": username,
      "email": email,
      "phone": phone,
      "password": password,
      "confirmpassword": confirmpassword,
    };

    const url = 'https://pet-adopt-dq32j.ondigitalocean.app/user/register';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: json.encode(usuarioJson),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Cadastro realizado com sucesso!")),
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Erro no cadastro: ${response.body}")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro de conexão: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(90, 220, 228, 241),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child:
                        Center(child: Image.asset("assets/images/Mypet.png")),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffFEB05F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontFamily: 'Baloo_Thambi_2',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _controladorUsername,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Baloo_Thambi_2',
                                  fontSize: 21,
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 225, 181),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: 'Username',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _controladorEmail,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Baloo_Thambi_2',
                                  fontSize: 21,
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 225, 181),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: 'Email',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _controladorPhone,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Baloo_Thambi_2',
                                  fontSize: 21,
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 225, 181),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: 'Phone',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _controladorPassword,
                              obscureText: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Baloo_Thambi_2',
                                  fontSize: 21,
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 225, 181),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _controladorConfirmpassword,
                              obscureText: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Baloo_Thambi_2',
                                  fontSize: 21,
                                ),
                                fillColor:
                                    const Color.fromARGB(255, 255, 225, 181),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: 'Confirm Password',
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () => registrarUsuario(context),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 250, 136, 29),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: const Text(
                              "Sign in",
                              style: TextStyle(fontSize: 23),
                            ),
                          ),
                        ],
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
