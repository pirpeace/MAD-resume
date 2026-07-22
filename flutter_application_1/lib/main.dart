import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'Flutter Demo2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: Scaffold(
        // โครงสร้างหน้าจอพื้นฐาน
        appBar: AppBar(
          title: const Text('RESUME'),
          backgroundColor: const Color.fromARGB(255, 255, 139, 189),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [const Text("ชื่อ: "), const Text("รัญชนา เทียมนุช")],
              ),
              Row(children: [const Text("ประวัติการศึกษา: ")]),
              Row(
                children: [
                  const Text("- มัธยมต้นปลาย - โรงเรียนเฉลิมขวัญสตรี"),
                ],
              ),
              Row(children: [const Text("- มหาวิทยาลัย - มหาวิทยาลัยนเรศวร")]),
              Row(children: [const Text("ประสบการณ์ทำงาน:")]),
              Row(
                children: [
                  const Text("- เป็นพี่เลี้ยงเด็กเล็กเขียนโค้ด 4 เดือน"),
                ],
              ),
              Row(children: [const Text("ความสามารถพิเศษ:")]),
              Row(children: [const Text("- อ่านภาษาเกาหลีออก")]),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB Pressed.");
          },
          child: const Icon(Icons.access_alarm),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(child: Column()),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
