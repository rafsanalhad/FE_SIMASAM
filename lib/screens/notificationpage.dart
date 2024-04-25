import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifikasi'),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
            child: ListView(children: [
              Padding(padding: EdgeInsets.all(10), child: Text('Today')),
              Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(children: [
                    ClipOval(
                        child: Image.asset(
                      'assets/img/th.jpg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    )),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Harafsan Alhad',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        Text('Mengirimkan foto sampah',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ],
                    )
                  ])),
            ])));
  }
}
