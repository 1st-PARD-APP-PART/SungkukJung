// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AddItemPage extends StatefulWidget {
  const AddItemPage({Key? key}) : super(key: key);

  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        shadowColor: const Color(0xffF5F5F5),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              size: 32,
            )),
        title: const Text(
          "중고거래 글쓰기",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "완료",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/image/additem.png',
              width: 131,
              height: 135,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              child: Column(
                children: [
                  const Divider(
                    thickness: 3,
                    color: Color(0xffF5F5F5),
                  ),
                  ListTile(
                    leading: const Text(
                      "제목",
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0xffF5F5F5),
                  ),
                  ListTile(
                    leading: const Text(
                      "카테고리",
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0xffF5F5F5),
                  ),
                  ListTile(
                    leading: const Text(
                      "가격",
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0xffF5F5F5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
