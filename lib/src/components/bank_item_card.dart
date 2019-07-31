import 'package:flutter/material.dart';
import '../models/bank.dart';
import 'label_with_title.dart';

class BankItemCard extends StatelessWidget {
  final Bank bank;

  BankItemCard({this.bank});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.lightBlue,
      ),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          buildHeader(),
          SizedBox(height: 15.0),
          buildFooter(),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.asset('images/iconDollar.png'),
        ),
        Expanded(
          flex: 6,
          child: Center(
            child: Text(
              bank.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Image.asset(bank.logoUri),
        ),
      ],
    );
  }

  Widget buildFooter() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 10,
          child: LabelWithTitle(
            title: 'الحركه فى البنك / لدينا',
            label: bank.dollarMovement,
          ),
        ),

        Expanded(
          flex: 4,
          child: LabelWithTitle(
            title: 'بيع',
            label: bank.dollarSellPrice.toString(),
          ),
        ),

        Expanded(
          flex: 4,
          child: LabelWithTitle(
            title: 'شراء',
            label: bank.dollarBuyPrice.toString(),
          ),
        ),

//        Text('الحركه فى البنك / لدينا'),
//        Text('بيع'),
//        Text('شراء'),
      ],
    );
  }
}
