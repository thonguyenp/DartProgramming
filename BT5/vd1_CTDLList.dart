void main ()
{
  //list là 1 tập hợp có thứ tự và cho phép trùng lặp
  List<String> list1 = ['A', 'B', 'C'];
  var list2 = [1, 2, 3];
  List<String> list3 = [];
  var list4 = List<int>.filled(3, 0); //tao list co 3 phan tu voi gia tri la 0

  // print(list4);

  // 1. them phan tu
  list1.add('D'); //them 1 phan t vao cuoi
  list1.addAll(['A', 'B', 'C']);  
  list1.insert(0, "z"); //them 1 phan tu vao index chi dinh
  list1.insertAll(1, ['1','0']);

  //2. xoa phan tu
  list1.remove('A');  //xoa phan tu A dau tien trong list
  list1.removeAt(0);  //xoa phan tu tai vi tri cuoi cung
  list1.removeLast(); //xoa phan tu tai vi tri cuoi
  list1.removeWhere((e) => e == 'B'); //xoa phan tu e voi e == 'B'
  list1.clear();  //xoa toan bo danh sach

  //3. truy cap phan tu
  // print(list2[0]);   //lay phan tu tai vi tri 0
  // print(list2.first);
  // print(list2.last);  //lay phan tu dau tien va cuoi cung trong list
  // print(list2.length);  //lay ra do dai cua list

  //4. kiem tra
  print(list2.isEmpty);   //kiem tra list co bi rong hay ko ?
  print('List 3: ${list3.isNotEmpty ? "not empty" : "empty"}');
  print(list4.contains(1)); //kiem tra list 4 co chua so 1 hay ko
  print(list4.indexOf(0));  //lan  dau xuat hien cua so 0
  print(list4.lastIndexOf(0));  //lan cuoi xuat hien cua so 0

  // print(list1);

  //5. bien doi 
  list4 = [2, 1, 3, 9, 0, 10];
  // print(list4);
  // list4.sort(); //sap xep tang dan
  // print(list4);
  // // print(list4.reversed);  //dao nguoc list
  // list4 = list4.reversed.toList();

  // 6. cat va noi
  var subList = list4.sublist(1,3); //lay 1 den 3 - 1 = 2
  var strJoined = list4.join(",");  //bien list thanh chuoi va ngan cach bang dau ,
  
  print(subList);
  print(strJoined);

  // 7. duyet cac phan tu trong mang
  list4.forEach((element)
  {
    print(element);
  });
}