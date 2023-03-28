import 'package:flutter/material.dart';
import 'data.dart'; // data.dart의 정보를 불러온다

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // Future은 미래에 언젠가 사용할 수 있는 잠재적인 값이나 오류를 나타넨다.
  // Future<List<String>>은 <List<String>>을 return 한다.
  //
  Future<List<String>> _getData() async {
    // 1. Future를 통해 data.dart의 리스트 정보를 가져올 때 async, await와 Future.delayed를 활용하여 10초의 정지 시간을 갖도록 한다.
    // 2. 10초가 지난 후 리스트 정보를 가져왔다면 then()을 활용하여 console창에 ‘출력 완료’ 라는 text가 출력하도록 만들어준다.

    // await이라는 method은 비동기식처리할때 요청한 값을 받을떄까지 기다린다는 뜻.
    // .delay는 지연을 시킨다는 뜻.
    // Duration(seconds: 10)는 10초인 기간동안을 지정하는것.
    return await Future.delayed(const Duration(seconds: 10), () {
      // 10초 후 data.dart에서 가져온 myData의 정보를 가져온다.
      return myData;
    }).then((value) {
      // myData가 나오면 "출력 완료"를 console에 출력한다.
      print("출력 완료");
      return value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      // 3. FutureBuilder<List<String>>와 Listview.Builder를 활용하여 아래 ListTile 코드를 통해 결과 화면과 같은 화면을 출력한다.
      body: FutureBuilder<List<String>>(
        future: _getData(), // 위에 만든 function에서 받은 데이터.
        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
          if (snapshot.hasData) {
            // 데이터가 있을때
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    snapshot.data![index],
                  ),
                );
              },
            );
          } else {
            // 데이타가 없을때
            // 10초 후 데이터를 받으니까 10초동안 아래와 같이 화면에 "Data Loading..."이라는 Text가 표시된다.
            return const Center(
              child: Text("Data Loading..."),
            );
          }
        },
      ),
    );
  }
}
