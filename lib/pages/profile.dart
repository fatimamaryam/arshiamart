import 'package:arshiamart/pages/Orders.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                letterSpacing: 1,
                color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: (Icon(Icons.edit)),
              color: Colors.blue,
              onPressed: () {
                print("Edit icon pressed");
              },
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assests/a.jpg"),
                  radius: 50,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Fatima Maryam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "fatima786maryam@gmail.com",
                    style: TextStyle(fontSize: 10.0, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 24.0, bottom: 24.0),
            child: Text(
              "Other Settings",
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Card(
                  color: Colors.yellow,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.history,
                      size: 32.0,
                      color: Colors.white,
                    ),
                  )),
              title: Text("My Order History"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 25.0,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrders()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Card(
                  color: Colors.orange,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.card_giftcard,
                      size: 32.0,
                      color: Colors.white,
                    ),
                  )),
              title: Text("Special offers"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 25.0,
              ),
              onTap: () {
                print("Giftcard tile pressed");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.account_balance_wallet,
                      size: 32.0,
                      color: Colors.white,
                    ),
                  )),
              title: Text("Promo Code"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 25.0,
              ),
              onTap: () {
                print("Promo Code tile pressed");
              },
            ),
          ),
          ListTile(
            leading: Card(
                color: Colors.deepOrange,
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.live_help,
                    size: 32.0,
                    color: Colors.white,
                  ),
                )),
            title: Text("Help and Support"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 25.0,
            ),
            onTap: () {
              print("Help tile pressed");
            },
          )
        ]));
  }
}
