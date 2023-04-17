// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "안녕하세요!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF444444),
              ),
            ),
            const Text(
              "휴대폰 번호로 로그인 해주세요.",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF444444),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            const Text(
              "휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF444444),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: false,
                      labelText: '휴대폰 번호 (- 없이 숫자만 입력)',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: false,
                      labelText: '비민번호',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  SizedBox(
                    width: 358,
                    height: 91,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        '로그인',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
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
