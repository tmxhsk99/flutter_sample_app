class Poketmon {
  final String id; // 포켓몬 게시물 고유 ID 나중에 firebase에서 자동생성
  final String name; // 포켓몬 이름
  final String title; // 포켓몬 게시물 제목
  final String link; // 포켓몬 사진 링크 ,URL 일 수 도 있고 다른형식을 링크일 수도 있음
  final int likeCount; // '좋아요'수
  final int replyCount; // '댓글'수
  final DateTime created; // 게시물 생성 시각 (년,월,일,시,분,초,밀리초)

  Poketmon({
    required this.id,
    required this.name,
    required this.title,
    required this.link,
    required this.likeCount,
    required this.replyCount,
    required this.created,
  });
}
