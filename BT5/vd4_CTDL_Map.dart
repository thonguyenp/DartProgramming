void main ()
{
  //CTDL o dang key-value
  //Moi key la duy nhat (giong voi Set)
  //Value co the trung lap (giong voi list)
  //Key va value co the la bat ky kieu du lieu nao

  //Khai bao
  Map<String, dynamic> user1 =  
  {
    'name': 'Nam',
    'age' : 20,
    'isStudent' : true,
  }; //khai bao truc tiep <String la chuoi>, <dynamic la kieu du lieu dong>

  var user2 = <String,dynamic>
  {
    'name' : 'Tho',
    'age': 21
  };  //khai bao bang var

  //khoi tao map rong
  Map<int, String> numbers = {}; 
  var emptyMap = Map<String, int>;


  //Them va cap nhat
  user1['email'] = 'tho@gmail.com';
  user1['age'] = 21;
  user1.putIfAbsent('phone', () => '036 713 7841');
  user1.addAll({  //them nhieu entry
    'address' : 'Nha Trang',
    'gender' : 'Male'
  });

  //xoa
  user1.remove('age');  //xoa key la age
  user1.removeWhere((key,value) => value == null);  //xoa cap key-value co value la null
  // user1.clear(); //xoa het

  //truy cap
  // print(user1);
  print(user1['name']); //value cua key 'name'
  print(user1.length);  //so luong key-value

  //lay value voi gia tri mac dinh
  String phone = user1['phone'] ?? 'khong co SDT';
  
  //4. kiem tra
  print(user1.isEmpty); //kiem tra rong
  print(user1.isNotEmpty); //kiem tra khong rong
  print(user1.containsKey('name'));   //kiem tra co chua key 'name' hay khong
  print(user1.containsValue('Nam')); //kiem tra co chua value 'name' hay khong

  //5. lay ra danh sach
  print(user1.keys);  //lay ra danh sach cac keys
  print(user1.values);   //lay ra danh sach cac values
  print(user1.entries); //lay ra danh sach cac MapEntry(key:value)

  //6. duyet map
  user1.forEach((key,value)
  {
    print('$key : $value');
  });

  for (var entry in user1.entries)
  {
    print('${entry.key} : ${entry.value}');
  }

  //7. bien doi
  var upperMap = user1.map((key,value) =>
    MapEntry(key.toUpperCase(), value)
  );  //map key thanh chu hoa

  var filteredMap = user1.entries
    .where((e) => e.value is String);
}