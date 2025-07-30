/*
Giống như 1 kênh YTB
+ Bạn đăng ký kênh (lắng nghe stream)
+ Video mới được tải lên (stream phát ra dữ liệu)
+ Bạn xem từng video khi nó xuất hiện (xử lý dữ liệu từ stream)
+ Kênh có thể đăng tải nhiều video theo thời gian (stream phát nhiều giá trị)

Stream trong dart là chuỗi sự kiện hoặc dữ liệu phát theo thời gian,
ko chỉ 1 lần như Future
*/

import 'dart:async';

void viDuVeStreamDemSo ()
{
  print("vd1: Stream trò chơi năm mười");
  // Cứ mỗi giây nhận đc số mới từ 0, tăng 5 đơn vị
  Stream<int> stream = Stream.periodic(Duration(seconds: 2), (x) => x*5). take(20);

  stream.listen(
    (x) => print("Nghe được số đếm: $x - đang chạy trốn"),
    onDone: () =>print("Người bị bắt đầu đi tìm"),
    onError: (loi) => print("Có vấn đề, ngừng trò chơi ($loi)"),
  );
}

void viDuStreamController() async
{
  print("VD2: Stream Controller");

  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (tinNhan) => print("Tin nhan moi: $tinNhan"),
    onDone: () => print("Khong con tin nhan nua"),
  );

  print("Dang gui tin dau tien");
  controller.add("xin chao");

  Future.delayed(Duration(seconds: 2), ()
  {
    print("Dang gui tin nhan hai");
    controller.add("Ban khoe khong");
  });

  Future.delayed(Duration(seconds: 4), () {
    print("Dang gui tin nhan cuoi");
    controller.add("Tam biet");
    controller.close();
  });
}

void main ()
{
  // viDuVeStreamDemSo();
  viDuStreamController();
}
