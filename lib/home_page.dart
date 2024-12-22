import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter basics',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 5,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Icon(Icons.settings, color: Colors.white),
          SizedBox(width: 16),
        ],
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(16),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.green],
                  )),
              child: Image.network('https://picsum.photos/200/300'),
            ),
            Image.asset('asset/img/img1.png', width: 200, height: 200),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              radius: 100,
            ),
          ],
        ),
      ),
    );
  }
}
