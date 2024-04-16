import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 302,
            height: 574,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.orange,
                width: 3,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                ElevatedButton(
                  onPressed: () {
                    // 첫 번째 버튼이 클릭되었을 때 수행할 동작
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // 버튼 배경색을 흰색으로 지정
                    //onPrimary: Colors.black, // 텍스트 색상을 주황색으로 지정
                    side: BorderSide(color: Colors.orange, width: 2), // 테두리 스타일 지정
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // 버튼 모양을 둥근 모서리로 지정
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60), // 버튼 내부 패딩 지정
                  ),
                  child: Text('상세보기'),
                ),
                SizedBox(height: 10), // 버튼 사이에 간격을 줍니다.
                ElevatedButton(
                  onPressed: () {
                    // 두 번째 버튼이 클릭되었을 때 수행할 동작
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // 버튼 배경색을 흰색으로 지정
                    //onPrimary: Colors.black, // 텍스트 색상을 주황색으로 지정
                    side: BorderSide(color: Colors.orange, width: 2), // 테두리 스타일 지정
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // 버튼 모양을 둥근 모서리로 지정
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 72), // 버튼 내부 패딩 지정
                  ),
                  child: Text('닫기'),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}