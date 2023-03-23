import 'package:flutter/material.dart';
import 'burger_page.dart';
class HambergersList extends StatefulWidget {
  final int row;
  HambergersList({required this.row});
  

  @override
  State<HambergersList> createState() => _HambergersListState();
}

class _HambergersListState extends State<HambergersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget baconImage = Container(
      height: 120,
      child: Image.asset('images/pacon_burger.png'),
    );

    Widget chickenImage = Container(
      height: 120,
      child: Image.asset('images/hamburger.png'),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 340 : 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                    right: index == items ? 20 : 0,
                  ),
                  height: 240,
                  width: 200,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? "Chicken Burger" : "Bacon Burger",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  "15,95 euro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 50 : 50,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: reverse ? chickenImage : baconImage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
