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
  set1.remove('A'); //xoa phan tu A 
  set1.removeAll(['B','C']);  //xoa phan tu theo list 
  set1.clear(); //xoa het phan tu

  //3. truy cap va kiem tra
  print(set1.length);
  print(set1.isEmpty);
  print(set1.contains('A'));

  //4. Cac phep toan tap hop
  var set5 = {1,2,3};
  var set6 = {3,4,5};

  var union = set5.union(set6);
  var intersec = set5.intersection(set6);
  var difference = set5.difference(set6);


  print(set1);
}