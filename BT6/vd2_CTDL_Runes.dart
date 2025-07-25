void main ()
{
  //Runes là tập hợp các điểm mã Unicode của 1 chuỗi
  // Để xử lý các ký tự Unicode đặc biệt của emoji
  // Mỗi  kí tự Unicode được biểu diễn bằng 1 số nguyên

  // Cách khai báo
  String str = 'Hello';
  Runes runes1 = str.runes;

  Runes runes2 = Runes('\u2665'); //\u là đại diện cho unicode
  print(runes2);

  Runes runes3 = Runes('\u{1F600}');
  print(runes3);

  //Các phương thức
  String heartSymbol = String.fromCharCodes(runes2);

  //Từ unicode sang string
  String emoji = String.fromCharCode(0x1F600);
  String symbol = String.fromCharCode(0x2665);

  print(runes1.length); //số lượng điểm mã
  print(runes1.first);  //điểm mã đầu tiên
  print(runes1.last);   //điểm mã cuối cùng

  runes1.forEach((int rune) {
    print('Unicode: $rune, Ký tự ${String.fromCharCode(rune)}')
  });

  //kiểm tra
  print(runes1.isEmpty);
  print(runes1.isNotEmpty);

  print(heartSymbol);
}