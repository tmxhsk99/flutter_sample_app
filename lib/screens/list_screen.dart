import 'package:flutter/material.dart';
import './detail_screen.dart';
import '../models/poketmon.dart';

final List<Poketmon> poketmons = [
  Poketmon(
      id: "0",
      name: "거북왕",
      title: "껍질깨기 거북왕 샘플",
      link: "assets/images/gbw.png",
      likeCount: 1920,
      replyCount: 6,
      created: DateTime.now()),
  Poketmon(
      id: "1",
      name: "이상해꽃",
      title: "퀘청팟 이상해꽃 샘플",
      link: "assets/images/ishgg.png",
      likeCount: 220,
      replyCount: 2,
      created: DateTime.now()),
  Poketmon(
      id: "2",
      name: "피카츄",
      title: "물리어태커 피카츄 샘플",
      link: "assets/images/pika.png",
      likeCount: 2020,
      replyCount: 9,
      created: DateTime.now()),
  Poketmon(
      id: "3",
      name: "리자몽",
      title: "선파워 리자몽 샘플",
      link: "assets/images/rizamong.png",
      likeCount: 320,
      replyCount: 2,
      created: DateTime.now()),
  Poketmon(
      id: "4",
      name: "강챙이",
      title: "배북 불테라 강챙이 샘플",
      link: "assets/images/gce.png",
      likeCount: 2620,
      replyCount: 10,
      created: DateTime.now()),
];

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Poketmon"),
        actions: [
          // 업로드 화면으로 이동
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 10.0,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          itemCount: poketmons.length,
          itemBuilder: (_, int index) => GestureDetector(
                // 포켓몬 상세 화면으로 이동
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        poketmon: poketmons[index],
                      ),
                    ),
                  );
                },
                child: Image.asset(
                  poketmons[index].link,
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}
