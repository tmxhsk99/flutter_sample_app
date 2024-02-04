import '../models/poketmon.dart';
import 'package:flutter/material.dart';

final List<String> replies = [
  "지금 메타에서는 사용하기 힘듬",
  "이거 쓰면 무조건 이긴다",
  "이거 쓰면 무조건 진다",
  "돌격조끼 사용시에는 노력치 조정이 필요",
  "후보 기술로는 기합구슬"
];

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.poketmon,
  });

  final Poketmon poketmon;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.poketmon.name)),
      body: SafeArea(
        child: Stack(
          children: [
          ListView(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 10.0,
              right: 10.0,
            ),
            physics: const ClampingScrollPhysics(),
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  widget.poketmon.link,
                  fit: BoxFit.cover,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(widget.poketmon.name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(
                        0xFF777777,
                      ),
                    ))
              ]),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      isLiked ? Icons.thumb_up :Icons.thumbs_up_down_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                  ),
                  Text(
                    widget.poketmon.likeCount.toString(),
                  )
                ],
              ),
              Text(
                "댓글 ${widget.poketmon.replyCount}개",
              ),
              ...List.generate(
                replies.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Row(children: [
                    const Text(
                      "익명",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                    Text(
                      replies[index],
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  "${widget.poketmon.created.year}년 ${widget.poketmon.created.month}월 ${widget.poketmon.created.day}일",
                  style: const TextStyle(
                    color: Color(
                      0xFFAAAAAA,
                    ),
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                color: Theme.of(context).canvasColor,
                child: const TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left:10.0,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "댓글 작성",
                    suffixIcon: Icon(
                        Icons.send,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
        )
      ),
    );
  }
}
