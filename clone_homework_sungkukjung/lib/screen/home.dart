// ignore_for_file: library_private_types_in_public_api
// 홈 화면
import 'package:flutter/material.dart';

import '../model/item.dart';
import '../model/items_rep.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bottomNavigationBar 위해 필요함..
  int _selectedIndex = 0;

  // 카드 만드는 함수
  List<Card> _buildCard(BuildContext context) {
    List<Item> items = ItemsRep.loadItems();

    if (items.isEmpty) {
      return const <Card>[];
    }

    return items.map((item) {
      return Card(
        child: SizedBox(
          height: 137,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 12, 15, 22),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(item.imgUrl),
                  ),
                ),
                const SizedBox(
                  width: 13.5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "S22 자급제 화이트 미개봉",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "군자동",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (item.isBooked)
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 53,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xff34BF9E),
                              ),
                              child: const Center(
                                child: Text(
                                  '예약중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              item.price,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      if (item.isSold)
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 53,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xff565656),
                              ),
                              child: const Center(
                                child: Text(
                                  '거래완료',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              item.price,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      if (!item.isBooked & !item.isSold)
                        Text(
                          item.price,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      Expanded(
                        child: Container(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            size: 19,
                          ),
                          SizedBox(width: 6),
                          Text(
                            '7',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: const Color(0xffF5F5F5),
        leadingWidth: 116,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 26,
            ),
            const Text(
              "한동대",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.keyboard_arrow_down),
            )
          ],
        ),
        actions: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  iconSize: 31,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                IconButton(
                  iconSize: 32,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
              ],
            ),
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 2),
        itemCount: _buildCard(context).length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCard(context)[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/additem');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
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
