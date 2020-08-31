import 'package:arshiamart/model/Items.dart';

class OrderDetail {
  int orderId;
  String dateTime;
  int totalAmount;
  final List<Items> itemsBought;

  OrderDetail(this.orderId, this.dateTime, this.totalAmount, this.itemsBought);

  static List<OrderDetail> fetchAll() {
    return [
      OrderDetail(1, "21/Aug/2020 03:04", 2500, [
        Items(21, "Mango Juice", 150, 4),
        Items(21, "Mango Juice", 150, 4),
        Items(21, "Mango Juice", 150, 4),
        Items(21, "Mango Juice", 150, 4),
        Items(21, "Mango Juice", 150, 4),
        Items(21, "Mango Juice", 150, 4),
        Items(21, "Mango Juice", 150, 4),
      ]),
      OrderDetail(2, "22/Aug/2020 03:04", 2200, [
        Items(22, "Mango Juice", 150, 4),
        Items(22, "Mango Juice", 150, 4),
        Items(22, "Mango Juice", 150, 4),
        Items(22, "Mango Juice", 150, 4),
        Items(22, "Mango Juice", 150, 4),
        Items(22, "Mango Juice", 150, 4),
        Items(22, "Mango Juice", 150, 4),
      ]),
      OrderDetail(3, "23/Aug/2020 03:04", 2500, [
        Items(23, "Mango Juice", 150, 4),
        Items(23, "Mango Juice", 150, 4),
        Items(23, "Mango Juice", 150, 4),
        Items(23, "Mango Juice", 150, 4),
        Items(23, "Mango Juice", 150, 4),
        Items(23, "Mango Juice", 150, 4),
        Items(23, "Mango Juice", 150, 4),
      ]),
    ];
  }
}
