/*
  Tạo ra alias cho những kiểu dữ liệu trong, giúp dữ liệu dễ làm hơn
  Cấu trúc: typedef 'tên' = 'kiểu dữ liệu'
 */

typedef IntList = List<int>;

typedef ListMapper<X> = Map<X, List<X>>;

void main ()
{
  List<int> l1 = [1,2,3,4,5];
  print(l1);

  IntList l2 = [1,2,3,4,5,6,7];
  print(l2);

  Map<String, List<String>> m1 = {};

  ListMapper<String> m2 = {}; //m1 cùng kiểu dữ liệu với m2
}