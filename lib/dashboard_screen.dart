import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xff475E3E),
        child: Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Gap(20),
            topBar(),
            location(),
            const Gap(20),
            SearchBar(),
            const Gap(20),
            categories(),
            const Gap(20),
            cardsView(),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
        ),
        const Gap(20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff98A2B3),
              ),
            ),
            //Angel del futuro, minuto 25:16
            Text(
              "Angel",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff344054),
              ),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffF2F4F7),
          child: Image.asset(
            "assets/notificacion.png",
            height: 20.0,
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20.0, vertical: 20);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xffD0D5DD),
        ),
        Gap(6.0),
        Text(
          "Cd. Juarez, Chihuahua",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff344054),
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  // ignore: non_constant_identifier_names
  Widget SearchBar() {
    return Container(
      width: Get.width,
      height: 40.0,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF2F4F7),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/search.png"),
            suffixIcon: Image.asset("assets/filter.png"),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20.0),
            prefixIconConstraints: const BoxConstraints(maxHeight: 20.0),
            border: InputBorder.none,
            fillColor: const Color(0XffF2F4F7),
            filled: true,
            hintText: "Buscar aqui",
            hintStyle: const TextStyle(fontSize: 14, color: Color(0xff98A2B3))),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Categorias"),
        const Gap(10.0),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color(0xff475E3E)),
                child: const Center(
                    child: Text(
                  "Todo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border:
                        Border.all(color: const Color(0xffD0D5DD), width: 1.5)),
                child: const Center(
                    child: Text(
                  "Coleccion",
                  style: TextStyle(
                    color: Color(0xff383737),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border:
                        Border.all(color: const Color(0xffD0D5DD), width: 1.5)),
                child: const Center(
                    child: Text(
                  "Ropa",
                  style: TextStyle(
                    color: Color(0xff383737),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border:
                        Border.all(color: const Color(0xffD0D5DD), width: 1.5)),
                child: const Center(
                    child: Text(
                  "Juguetes",
                  style: TextStyle(
                    color: Color(0xff383737),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ),
            ],
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  Widget cardsView() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.83,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          //Yo del futuro, minuto 44:47.
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffF0F4EF),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/producto1.png",
                          height: 110,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Mascara",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Gap(8.0),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff475E3E)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffF0F4EF),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/Producto2.jpg",
                          height: 110,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Estatuas",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Gap(8.0),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff475E3E)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffF0F4EF),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/Producto3.jpg",
                          height: 110,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Cinturon",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Gap(8.0),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff475E3E)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffF0F4EF),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/Producto4.jpg",
                          height: 110,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Mochila",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Gap(8.0),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xff475E3E)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
