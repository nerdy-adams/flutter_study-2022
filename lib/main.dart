import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text('금호동3가',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Icon( Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
            ),
            actions: [
              SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search_outlined,
                        color: Colors.black,
                      ),
                      Icon(Icons.menu_outlined,
                        color: Colors.black,
                      ),
                      Icon(Icons.notifications_none_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top : 10.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image(
                          image: AssetImage('assets/2.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                                '캐논 DSLR 100D(단렌즈 충전기',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                          ),
                          Text(
                            '충전기 16기가SD 포함',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                              '성동구 행당동 · 끌올 10분 전 ',
                              style: TextStyle(
                                color: Color(0xffbbbbbb),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                          ),
                          Text(
                            '210,000원',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_outline),
                                Text('4')
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
        ),
        // Align(
        //   alignment: Alignment.topCenter,
        //   child: Container(
        //     width: double.infinity, height: 120,
        //     margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        //     decoration: BoxDecoration(
        //         color: Colors.red, border: Border.all( color: Colors.black )
        //     ),
        //   ),
        // ) ,
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          )
        ),
      )
    );
  }
}
