import 'package:arshiamart/model/Items.dart';

class OrderDetail {
  int orderId;
  String dateTime;
  int totalAmount;
  final List<Items> itemsBought;

  OrderDetail(this.orderId, this.dateTime, this.totalAmount, this.itemsBought);

  List<Items> getitems(orderID) {}
  static List<OrderDetail> fetchAll() {
    return [
      OrderDetail(1, "21/Aug/2020 03:04", 2100, [
        Items(21, "Mango Juice", 150, 1),
        Items(21, "Mango Juice", 150, 1),
        Items(21, "Mango Juice", 150, 1),
        Items(21, "Mango Juice", 150, 1),
        Items(21, "Mango Juice", 150, 1),
        Items(21, "Mango Juice", 150, 1),
        Items(21, "Mango Juice", 150, 1),
      ]),
      OrderDetail(2, "22/Aug/2020 03:04", 2200, [
        Items(22, "Mango Juice", 150, 2),
        Items(22, "Mango Juice", 150, 2),
        Items(22, "Mango Juice", 150, 2),
        Items(22, "Mango Juice", 150, 2),
        Items(22, "Mango Juice", 150, 2),
        Items(22, "Mango Juice", 150, 2),
        Items(22, "Mango Juice", 150, 2),
      ]),
      OrderDetail(3, "23/Aug/2020 03:04", 2500, [
        Items(23, "Mango Juice", 150, 3),
        Items(23, "Mango Juice", 150, 3),
        Items(23, "Mango Juice", 150, 3),
        Items(23, "Mango Juice", 150, 3),
        Items(23, "Mango Juice", 150, 3),
        Items(23, "Mango Juice", 150, 3),
        Items(23, "Mango Juice", 150, 3),
      ]),
    ];
  }
}
