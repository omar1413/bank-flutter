import '../models/bank.dart';

class Bloc {
  List<Bank> banks = [];

  final namesOfBanks = [
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

  final logosOfBanks = [
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
    for (int i = 0; i < namesOfBanks.length; i++) {
      final bank = Bank(
        name: namesOfBanks[i],
        logo: logosOfBanks[i],
        dollarBuyPrice: 16.550,
        dollarSellPrice: 16.550,
        dollarMovement: 'منذ 3 ساعه / منذ 28',
      );
      banks.add(bank);
    }
  }
}
