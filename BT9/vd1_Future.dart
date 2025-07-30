import 'dart:async';

/*
Future là gì ?
+ Bạn gọi món (gọi một hàm)
+ Nhân viên phục vụ hẹn mang món ăn ra (nhận về 1 Future)
+ Bạn có thể làm việc khác trong lúc chờ đợi (chạy code)
Khi món ăn được phục vụ (Future hoàn thành), bạn có thể thưởng thức nó (dùng kết quả)

Future hoạt động tương tự
Đó là 1 cách làm việc với các tác vụ mất tgian mà ko phải chờ đợi (vd: tải dữ liệu từ internet, đọc tệp)

Khi thêm từ khóa async vào 1 hàm => Hàm này chứa code "bất đồng bộ"
"Bất đồng bộ" là: ko chạy từ trên xuống mà làm nhiều hành động song song nhau
*/

Future<String> layTen () async 
{
  return "Nguyen Phuoc Tho";
}

/*
  Await chỉ được dùng trong hàm có async, khi có Await, Dart sẽ:
  + Tạm dừng thực thi tại dòng đó
  + Đợi Future hoàn thành
  + Trả về giá trị từ Future (ko còn đóng gói trong Future nữa)
  + Tiếp tục thực thi những dòng code còn lại
*/

//Hàm trả về 1 Future
Future<String> taiDuLieu()
{
  return Future.delayed(
    Duration(seconds: 2, ),
    () => "Dữ liệu đã tải xong"
  );
}

// Gọi hàm cách 1
void hamChinh1()
{
  print("Bắt đầu tải dữ liệu");
  Future<String> f = taiDuLieu();
  f.then((ketQua)
  {
    print("Kết quả: ${ketQua}");
  });
  print("Tiếp tục công việc khác");
  // In bắt đầu tải -> Trong lúc đợi 2 giây thì in "Tiếp tục công việc ..." 
  //=> có kết quả in ra kết quả
}

//gọi hàm cách 2
void hamChinh2() async
{
  print("Bắt đầu tải dữ liệu");
  String ketQua = await taiDuLieu();
  print("Kết quả: ${ketQua}");
  print("Tiếp tục công việc khác");
  // In bắt đầu tải -> đợi 2 giây thì in ra kết quả
  //=> có kết quả rồi mới làm các dòng dưới
}


void main()
{
  // hamChinh1();
  hamChinh2();
}