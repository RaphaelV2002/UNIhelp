import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}
class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text(
          'UNIhelp', style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),)),
        backgroundColor: Color(0xff9fa8da),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Dialogues',
          ),
        ],
      ),
      body: Column(
        children: [
          ProfiPic(),
          UserName(),
          Userid(),
        ],
      ),
    );
  }

  Widget ProfiPic() {
    return Container(
      alignment: Alignment.center,
      child: Image.network('https://cs12.pikabu.ru/post_img/big/2022/03/21/10/164788475811377451.jpg',
        height: 150, width: 200, ),
    );
  }
  Widget UserName(){
    return Container(
      alignment: Alignment.center,
      child: Text('Имя Фамилия', style: TextStyle(fontSize: 28),),
    );
  }
  Widget Userid(){
    return Container(
      alignment: Alignment.center,
      child: Text('@userID1', style: TextStyle(fontSize: 20),),
    );
  }
}
