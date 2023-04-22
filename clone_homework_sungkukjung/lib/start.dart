// ignore_for_file: library_private_types_in_public_api
// 시작 화면
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
          // 위에 빈칸
          const SizedBox(
            height: 285,
          ),
          // 당근 이미지
          Image.asset(
            'assets/image/carrot.png',
          ),
          // 당근 이미지랑 아래 텍스트 사이 공간
          const SizedBox(
            height: 8,
          ),
          // 텍스트
          const Text(
            "당신 근처의 당근마켓",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF444444),
            ),
          ),
          // 텍스트간 공간
          const SizedBox(
            height: 14,
          ),
          // 텍스트
          const Text(
            "중고 거래부터 동네 정보까지, \n 지금 내 동네를 선택하고 시작해보세요!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF444444),
            ),
          ),
          // 2번째 텍스트랑 버튼 사이 공간
          const SizedBox(
            height: 239,
          ),
          // 버튼
          SizedBox(
            // 버튼 크기
            width: 354,
            height: 56,
            child: ElevatedButton(
              // 버튼 스타일
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              // named route -> 회원가입 페이지 이동
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
                // named route -> 로그인 화면
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
