import 'package:flutter/material.dart';

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

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _OrdersDescription(
          orderId: "234234",
          dateTime: "12/Aug/2013",
          amount: "25000",
        ),
      ],
    );
  }
}
