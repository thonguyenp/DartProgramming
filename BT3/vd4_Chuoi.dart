// Chuoi la 1 tap hop cac ki tu UTF-16
void main ()
{
  var s1 = "Nguyen Phuoc Tho";
  var s2 = '64.CNTT-1';

  // Chen gia tri cua 1 bieu thuc, bien vao chuoi
  double diemToan = 9.5;
  double diemVan = 8;
  var s3 = "Xin chao $s1, hoc lop $s2, tong diem: ${(diemToan+diemVan)/2}";
  print(s3);

  //Tao chuoi nam o nhieu dong
  var s4 = ''' 
    Dòng 1
    Dòng 2
    Dòng 3
  ''';

  var s5 = """
    Dòng 1
    Dòng 2
    Dòng 3
  """;

  // var s6 = "Đây là 1 đoạn \n văn bản";
  // print(s6);
  // var s7 = r"Đây là 1 đoạn \n văn bản"; //r là viết tắt của 'raw'
  // print(s7);

  var s8 = "Chuỗi 1 " + "Chuỗi 2";
  print(s8);

  var s9 = "Chuỗi "
  "này"
  "là"
  "một chuỗi"; 
  print(s9);
}