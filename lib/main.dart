import 'package:flutter/material.dart';

void main() {
  print("ilk işlem başarili olarak çaliştirildi.");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    String _name = "Begüm";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Home"), centerTitle: false, actions: [
          IconButton(
            icon: Image.asset("variables/notification.png",
                width: 24, height: 24),
            onPressed: () {},
          ),
          IconButton(
              icon: Image.asset("variables/bag-2.png", width: 24, height: 24),
              onPressed: () {}),
        ]),
        body: Column(
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("variables/search-normal.png",
                        width: 24, height: 24),
                  ),
                  labelText: "Search Anything...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFFD1D5DB),
                        width: 1,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View All ->",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF687280),
                      fontSize: 12,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 55)),
                        // if (i == 0)
                        //   Image.asset('variables/fashion.png',
                        //       width: 50, height: 50)
                        // else if (i == 1)
                        //   Image.asset('variables/electronic.png',
                        //       width: 50, height: 50)
                        // else if (i == 2)
                        //   Image.asset('variables/appliences.png',
                        //       width: 50, height: 50)
                        // else if (i == 3)
                        //   Image.asset('variables/beauty.png',
                        //       width: 50, height: 50)
                        // else
                        //   Image.asset('variables/furniture.png',
                        //       width: 50, height: 50),

                        // if (i == 0)
                        //   Text("0")
                        // else if (i == 1)
                        //   Text("0")
                        // else if (i == 2)
                        //   Text("0")
                        // else if (i == 3)
                        //   Text("0")
                        // else
                        //   Text("0")

                        Image.asset(
                          i == 0
                              ? 'variables/fashion.png'
                              : i == 1
                                  ? 'variables/electronic.png'
                                  : i == 2
                                      ? 'variables/appliences.png'
                                      : i == 3
                                          ? 'variables/beauty.png'
                                          : 'variables/furniture.png',
                          width: 50,
                          height: 50,
                        ),
                        Text(i == 0
                            ? 'Fashion'
                            : i == 1
                                ? 'Electronic'
                                : i == 2
                                    ? 'Appliances'
                                    : i == 3
                                        ? 'Beauty'
                                        : 'Furniture'),

                        // Text(i == 1 ? "Electronic")
                        // Text(i == 2 ? "Appliences")
                        // Text(i == 3 ? "Beauty")
                        // Text(i == 4 ? "Furniture")
                      ],
                    ),
                ],
              ),
            ),
            Text('Hello, $_name! How are you ?')
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
