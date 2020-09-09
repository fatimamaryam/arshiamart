import 'package:arshiamart/model/OrderDetail.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  final completedOrders = OrderDetail.fetchAll();

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
                style: TextStyle(fontSize: 14, color: Colors.black),
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
                //Completed Order Tab
                width: MediaQuery.of(context).size.width,
                color: Colors.red[100],
                padding: EdgeInsets.only(top: 16.0),
                child: ListView.builder(
                  itemCount: completedOrders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        return _openBottomSheet(
                            context, completedOrders[index]);
                      },
                      child: _OrdersDescription(
                        orderId: completedOrders[index].orderId.toString(),
                        dateTime: completedOrders[index].dateTime,
                        amount: completedOrders[index].totalAmount.toString(),
                      ),
                    );
                  },
                )),
            Container(
              //Cancelled Order Tab
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}

void _openBottomSheet(BuildContext context, OrderDetail orderDetail) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            width: MediaQuery.of(context).size.height * .06,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Order Id : " + orderDetail.orderId.toString(),
                  style: TextStyle(fontSize: 18, letterSpacing: 1),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Item Name",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Unit Price",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 2,
                child: Container(
                  child: new ListView.builder(
                    itemCount: orderDetail.itemsBought.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                orderDetail.itemsBought[index].itemQuantity
                                    .toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                orderDetail.itemsBought[index].itemName
                                    .toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                orderDetail.itemsBought[index].itemPrice
                                    .toString(),
                                style: TextStyle(fontSize: 16),
                              )
                            ]),
                      );
                    },
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Total Items :",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(orderDetail.itemsBought.length.toString(),
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Total :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text("34000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24))
                      ],
                    ),
                  ],
                ),
              )
            ]));
      });
}

class _OrdersDescription extends StatelessWidget //Orders Info Card
{
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
      padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Amount : $amount")],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 10,
        )
      ]),
    );
  }
}
