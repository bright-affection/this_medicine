import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Pretendard', // Pretendard 폰트 적용
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black), // 전체 텍스트 색상을 검은색으로 지정
          bodyText2: TextStyle(color: Colors.black), // 전체 텍스트 색상을 검은색으로 지정
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Demo'),
      ),
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100, // 하단 바 높이를 충분히 작게 조정
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: '홈화면',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.only(top: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/img/camera-button.svg',
                      width: 20,
                      height: 39,
                    ),
                  ],
                ),
              ),
                label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: '내정보',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFFFA8100),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize:15),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // 버튼이 눌렸을 때 실행될 코드
        },
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontWeight: FontWeight.bold, // 버튼 텍스트의 굵기를 bold로 설정
            ),
          ),
        ),
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 15), // 버튼 텍스트 크기 설정
        ),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // 버튼이 눌렸을 때 실행될 코드
        },
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontWeight: FontWeight.bold, // 버튼 텍스트의 굵기를 bold로 설정
            ),
          ),
        ),
        child: Text(
          'Search Page',
          style: TextStyle(fontSize: 15), // 버튼 텍스트 크기 설정
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // 버튼이 눌렸을 때 실행될 코드
        },
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontWeight: FontWeight.bold, // 버튼 텍스트의 굵기를 bold로 설정
            ),
          ),
        ),
        child: Text(
          'Profile Page',
          style: TextStyle(fontSize: 15), // 버튼 텍스트 크기 설정
        ),
      ),
    );
  }
}
