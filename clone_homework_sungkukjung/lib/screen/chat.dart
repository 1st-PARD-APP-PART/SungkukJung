// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: const Color(0xffF5F5F5),
        title: const Text(
          "모모로",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 45, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 170,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/image/detail.png',
                      width: 48,
                      height: 46,
                      fit: BoxFit.fill,
                    ),
                    title: Row(
                      children: const [
                        Text(
                          '판매중 ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "맥북",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff767070),
                          ),
                        ),
                      ],
                    ),
                    subtitle: const Text(
                      "790,000원",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 112,
                  height: 38,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.calendar_today_rounded),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "예약하기",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: Color(0xffF5F5F5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(
                      maxWidth: 211,
                      maxHeight: 49,
                    ),
                    color: const Color(0xffFD7E35),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "저랑 사귀실래요?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/detailprofile.png',
                  width: 52,
                  height: 52,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 4,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(
                      maxWidth: 211,
                      maxHeight: 48,
                    ),
                    color: const Color(0xffE7E7E7),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "안돼요.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: 54,
            color: Color(0xffEEEEEE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 348,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.5),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_right,
                  size: 41,
                  color: Color(0xffCCCCCC),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
