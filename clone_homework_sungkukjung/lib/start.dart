// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 285,
          ),
          Image.asset(
            'assets/image/carrot.png',
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "당신 근처의 당근마켓",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF444444),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            "중고 거래부터 동네 정보까지, \n 지금 내 동네를 선택하고 시작해보세요!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF444444),
            ),
          ),
          const SizedBox(
            height: 239,
          ),
          SizedBox(
            width: 354,
            height: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text(
                '시작하기',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "이미 계정이 있나요?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 16,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  "로그인",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
