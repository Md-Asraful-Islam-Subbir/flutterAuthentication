import 'package:flutter/material.dart';
import 'package:auth_firebase/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

Widget listTile({required IconData icon,required String title}){
  return ListTile(
leading: Icon(
  icon,
  size: 32,
),
title: Text(
  title,
  style: TextStyle(color: Colors.black),
),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
     drawer: Drawer(
        child: Container(
          color:Color(0xFFFF6347) ,
          child: ListView(
            children:  [
              DrawerHeader(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Color(0xFFFF6347),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Welcome Guest'),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Login"),
                              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.black87, // Add the color you want for the border
                  ),
                            ),
                            ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              listTile(icon: Icons.home_outlined,title: "Home"),
              listTile(icon: Icons.shop_outlined,title: "Review Cart"),
              listTile(icon: Icons.person_outlined,title: "My Profile"),
              listTile(icon: Icons.notifications_outlined,title: "Notifications"),
              listTile(icon: Icons.star_outlined,title: "Rating & Review"),
              listTile(icon: Icons.favorite_outline_outlined,title: "Wishes"),
              listTile(icon: Icons.copy_outlined,title: "Raise a complaint"),
              listTile(icon: Icons.format_quote_outlined,title: "FQAs"),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            )),
        actions: [
          const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
              child: Icon(Icons.shop, size: 17, color: Colors.black),
            ),
          ),
        ],
        backgroundColor: const Color(0xFFFF6347),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/cover.png'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 150, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF6347),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Tomato',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0xFFFF6347),
                                      blurRadius: 3,
                                      offset: Offset(3, 3),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '30% Off',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Color(0xFFFF6347),
                                blurRadius: 2,
                                offset: Offset(3, 3),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'on all burger categories!',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Salad items '),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 260,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xffd9dad9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset('assets/food_1.png'),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Greek salad',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '12৳',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 4; i++)
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.red,
                                    ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                        width:
                                            50, // Fixed width for the "-1+" box
                                        child: Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFFF6347)),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.remove,
                                                size: 10,
                                                color: Colors.orange,
                                              ),
                                              Text('1'),
                                              Icon(
                                                Icons.add,
                                                size: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}