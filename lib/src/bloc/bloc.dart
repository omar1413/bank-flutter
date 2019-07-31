import '../models/bank.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';

class Bloc {
  final _bankStreamController = ReplaySubject<Bank>();

  List<Bank> _banks = [];

  final _namesOfBanks = [
    'البنك الاهلى الكويتى',
    'البنك الاهلى المصرى',
    'بنك البركه',
    'بنك التنميه الصناعيه',
    'بنك الشركة المصرفية العربية الدولية',
    'بنك الكويت الوطني NBK',
    'بنك المشرق',
    'بنك مصر',
    'كريدى أجريكول',
  ];

  final _logosOfBanks = [
    'abk.png',
    'ahli.png',
    'baraka.png',
    'idb_logo.png',
    'saib.png',
    'nbk.png',
    'mashreq.png',
    'misr.jpg',
    'credit.png',
  ];

  Bloc() {
    for (int i = 0; i < _namesOfBanks.length; i++) {
      final bank = Bank(
        name: _namesOfBanks[i],
        logo: _logosOfBanks[i],
        dollarBuyPrice: 16.550,
        dollarSellPrice: 16.550,
        dollarMovement: 'منذ 3 ساعه / منذ 28',
      );
      _banks.add(bank);
      _bankStreamController.sink.add(bank);
    }
  }

  Stream<Bank> getBankStream() => _bankStreamController.stream;

  dispose() {
    _bankStreamController.close();
  }
}

final bloc = Bloc();
