void main ()
{
  // for loop
  for (var  i = 1; i <= 5; i++)
  {
    print(i);
  }

  //for-in
  var names = ["Nguyen", "Phuoc", "Tho"];
  for (var n in names)
  {
    print(n);
  }

  //while loop
  var i = 1;
  while (i <= 5)
  {
    print(i++);
  }
  
  //do - while: thực hiện ít nhất 1 lần
  var x = 1;
  do 
  {
    print(x);
    x++;
  }
  while (x <= 5);

  //break, continue
  print("-----");
  x = 1;
  do 
  {
    print(x);
    x++;
    if (x == 3) 
      break;
  }
  while (x <= 5);
  print("-----");
  x = 1;
  do 
  {
    x++;
    if (x == 3) 
      continue;
    print(x);
  }
  while (x <= 5);


}