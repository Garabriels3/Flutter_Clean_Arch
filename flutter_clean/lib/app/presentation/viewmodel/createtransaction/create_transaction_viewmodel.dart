import 'package:bytebank/app/domain/model/transfer.dart';
import 'package:mobx/mobx.dart';

part 'create_transaction_viewmodel.g.dart';

class CreateTransactionViewModel = CreateTransactionViewModelBase
    with _$CreateTransactionViewModel;

abstract class CreateTransactionViewModelBase with Store {

  @observable
  String amount = "";

  @observable
  String number = "";

  @action
  setAmount(String value) => amount = value;

  @action
  setNumber(String value) => number = value;

  createTransfer() {
    if (amount != null && number != null) {
      return Transaction(amount: amount, number: number);
    }
    return null;
  }
}
