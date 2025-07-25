void main ()
{
  // Set la ctdl ko trung lap va ko co thu tu xac dinh

  Set<String> set1 = {'A', 'B', 'C'}; //truc tiep
  var set2 = <int>{1, 2, 3};  //dung var
  Set<String> set3 = Set(); //set rong
  var set4 = Set<int>.from([1,2,2,4]);  //tu list -> set (loai bo trung)

  //1. them phan tu
  set1.add('D');  //add vao cuoi
  set1.addAll(['e', 'f']);  //add nhieu phan tu theo list vao cuoi

  //2. xoa phan tu
  // set1.remove('A'); //xoa phan tu A 
  set1.removeAll(['B','C']);  //xoa phan tu theo list 
  // set1.clear(); //xoa het phan tu

  //3. truy cap va kiem tra
  print(set1.length);
  print(set1.isEmpty);
  print(set1.contains('A'));

  //4. Cac phep toan tap hop
  var set5 = {1,2,3};
  var set6 = {3,4,5};

  var union = set5.union(set6); //phep hop
  var intersec = set5.intersection(set6); //phep giao
  var difference = set5.difference(set6); //phep hieu

  // print(union);
  // print(intersec);
  // print(difference);

  //5. bien doi
  var list = set1.toList();
  var newSet = Set.from(set1);

  // print(list);
  // print(newSet);

  //6. loc va anh xa
  var filtered = set1.where((e) => e.startsWith('A'));  //dung toan tu lambda de loc ra phan tu A va tao set moi
  var mapped = set1.map((e) => e.toLowerCase());  //dung toan tu lambda de lowercase tat ca set1

  //7. xu ly tung phan tu
  set1.forEach((e) => print(e));

  print(filtered);
  print(mapped);
  // print(set1);
}