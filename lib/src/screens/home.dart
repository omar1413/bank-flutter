import 'package:flutter/material.dart';
import '../bloc/bloc.dart';
import '../models/bank.dart';
import '../components/bank_item_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Bank>>(
      stream: bloc.getBankStream(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data == null ? 0 : snapshot.data.length,
          itemBuilder: (context, index) {
            return BankItemCard(
              bank: snapshot.data[index],
            );
          },
        );
      },
    );
  }
}
