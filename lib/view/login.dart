import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/view/cadastro.dart';
import 'package:project/view/navigation.dart';
 
class Login extends StatelessWidget {
  Login({super.key});
 
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 
  Future<void> login(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;
 
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Por favor, preencha todos os campos.")),
      );
      return;
    }
 
    try {
      final response = await http.post(
        Uri.parse('https://pet-adopt-dq32j.ondigitalocean.app/user/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );
 
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final token = data['token'];
 
        if (token != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('authToken', token);
 
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Login realizado com sucesso!")),
          );
 
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ControleTelas()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Erro ao obter o token.")),
          );
        }
      } else {
        final errorMessage =
            jsonDecode(response.body)['message'] ?? 'Erro desconhecido.';
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Erro: $errorMessage")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro ao conectar: $e")),
      );
    }
  }
 
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
          Padding(
            padding:
                const EdgeInsets.only(top: 100, bottom: 100, left: 20, right: 20),
            child: Column(
              children: [
                Center(child: Image.asset("assets/images/Mypet.png")),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffFEB05F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 40, right: 40),
                      child: Column(
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontFamily: 'Baloo_Thambi_2',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Center(
                              child: TextField(
                                controller: emailController,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Center(
                              child: TextField(
                                controller: passwordController,
                                obscureText: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Baloo_Thambi_2',
                                    fontSize: 21,
                                  ),
                                  filled: true,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28, bottom: 12),
                            child: GestureDetector(
                              onTap: () => login(context),
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 250, 136, 29),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Baloo_Thambi_2',
                                        fontSize: 27,
                                      ),
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
                                      builder: (context) => Cadastro()));
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(fontSize: 23),
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
        ],
      ),
    );
  }
}
 