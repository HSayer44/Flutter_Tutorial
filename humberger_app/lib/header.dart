import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(45),
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 2),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/dog.png'),
                                radius: 30,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              children: [
                                const Text(
                                  "Joe Claun",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black),
                                  child: const Text(
                                    'Gold Member',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '154 Euro',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          child: Container(
                            height: 40,
                            width: size.width,
                            child: Card(
                              elevation: 3,
                              margin: EdgeInsets.symmetric(horizontal: 100),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText:
                                      "What does your belly want to eat ?",
                                  suffixIcon: Icon(Icons.search),
                                  contentPadding: EdgeInsets.only(left: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
