import 'package:bytebank/app/domain/model/transfer.dart';
import 'package:mobx/mobx.dart';

part 'transaction_list_viewmodel.g.dart';

class TransactionListViewModel = TransactionListViewModelBase
    with _$TransactionListViewModel;

abstract class TransactionListViewModelBase with Store {
  @observable
  List<Transaction> transaction = List();

  @action
  addTransaction(Transaction value) => transaction.add(value);
}
