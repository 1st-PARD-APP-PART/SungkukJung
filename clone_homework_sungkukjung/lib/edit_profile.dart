// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Color(0xffF5F5F5),
        title: const Text(
          "프로필 수정",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/image/profile.png',
              width: 177,
              height: 171,
              fit: BoxFit.fill,
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: false,
                      alignLabelWithHint: true,
                      hintText: "본인 이름을 적어주세요!",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffFAAAAAA),
                    ),
                    top: BorderSide(
                      color: Color(0xffFAAAAAA),
                    ),
                  ),
                ),
                child: const ListTile(
                  leading: Text(
                    "사는곳",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            SizedBox(
              height: 91,
              width: 428,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mypage');
                },
                child: const Text(
                  "완료",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
