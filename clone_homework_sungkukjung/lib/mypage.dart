// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Color(0xffF5F5F5),
        leadingWidth: 115,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 26,
            ),
            Text(
              "나의 당근",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text(
              "로그아웃",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            width: 22,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(21.5, 10, 21.5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/profile.png',
                  width: 129,
                  height: 125,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 45,
                ),
                const Text(
                  "본인 이름",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 76,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/editprofile');
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 32,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: Color(0xffF5F5F5),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 63,
                      height: 63,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffFCEEE0),
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.list_rounded,
                          color: Color(0xffFF7E36),
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "판매내역",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 63,
                      height: 63,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffFCEEE0),
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.shopping_bag,
                          color: Color(0xffFF7E36),
                          size: 27,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "구매내역",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 63,
                      height: 63,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffFCEEE0),
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Color(0xffFF7E36),
                          size: 27,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "관심목록",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: Color(0xffF5F5F5),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "최근판매내역",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 3,
            color: Color(0xffF5F5F5),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/image/item.png',
                width: 335,
                height: 335,
                fit: BoxFit.fill,
              ),
              const Text(
                "갤럭시 S22",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        currentIndex: _selectedIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/mypage');
              break;
          }
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 35,
            ),
            label: '나의 당근',
          ),
        ],
      ),
    );
  }
}
