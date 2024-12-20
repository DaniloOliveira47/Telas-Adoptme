import 'package:flutter/material.dart';
import 'package:project/model/Pet.dart';
import 'package:project/service/ServicePet.dart';
import 'package:project/view/detalhes.dart';
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
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 20, left: 23, right: 23),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, size: 45),
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
                              ),
                            ),
                          ),
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
              Expanded(
                child: FutureBuilder<List<Pet>>(
                  future: PetService.fetchPets(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(
                          child: Text('Error: ${snapshot.error.toString()}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(child: Text('No pets available'));
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(14),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3 / 4,
                          ),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final pet = snapshot.data![index];
                            try {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Detalhes(pet: pet),
                                    ),
                                  );
                                },
                                child: CardPet(
                                  name: pet.name,
                                  breed: pet.color,
                                  imageUrl: pet.images.isNotEmpty
                                      ? pet.images.first
                                      : '',
                                ),
                              );
                            } catch (e) {
                              debugPrint('Erro ao renderizar card: $e');
                              return SizedBox
                                  .shrink(); 
                            }
                          },
                        ),
                      );
                    }
                  },
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
