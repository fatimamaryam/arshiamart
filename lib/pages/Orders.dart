import 'package:arshiamart/pages/OrdersDescription.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<int> test = [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Order History",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                letterSpacing: 1,
                color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Text(
                "Completed Orders",
                style: TextStyle(
//                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "Cancelled Orders",
                style: TextStyle(fontSize: 14, color: Colors.black),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red[100],
              child: ListView(children: <Widget>[
                Column(
                  children: List.generate(test.length, (index) {
                    return _OrdersDescription(
                      orderId: "234234",
                      dateTime: "12/Aug/2013",
                      amount: "25000",
                    );
////                      OrderList();
//                        ListTile(
//                      leading: Text(
//                        "Order ID :",
//                        style: TextStyle(color: Colors.grey, fontSize: 18),
//                      ),
//                      title: Text(test[index].toString(),
//                          style: TextStyle(fontSize: 17)),
//                      subtitle: Text("Date"),
//                    );
                  }),
                ),
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}

class _OrdersDescription extends StatelessWidget {
  _OrdersDescription({
    Key key,
    this.orderId,
    this.dateTime,
    this.amount,
  }) : super(key: key);

  final String orderId;
  final String dateTime;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Order Id: $orderId"), Text("$dateTime")],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [Text("Amount : $amount")],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
