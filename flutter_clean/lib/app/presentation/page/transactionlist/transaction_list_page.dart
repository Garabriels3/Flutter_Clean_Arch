import 'package:bytebank/app/domain/model/transfer.dart';
import 'package:bytebank/app/presentation/page/createtransaction/transfer_create_page.dart';
import 'package:bytebank/app/presentation/viewmodel/transactionlist/transaction_list_viewmodel.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:flutter/material.dart';

class TransactionListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransactionListState();
  }
}

class TransactionListState extends State<TransactionListPage> {
  final viewModel = serviceLocator<TransactionListViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TRANSFER),
      ),
      body: ListView.builder(
        itemCount: viewModel.transaction.length,
        itemBuilder: (context, index) {
          final transfer = viewModel.transaction[index];
          return ItemTransactionWidget(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Future<Transaction> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferCreatePage();
          }));
          future.then((transfer) {
            setState(() {
              if (transfer != null) viewModel.addTransaction(transfer);
            });
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class ItemTransactionWidget extends StatelessWidget {
  final Transaction _transaction;

  ItemTransactionWidget(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_transaction.amount.toString()),
          subtitle: Text(_transaction.number.toString()),
          trailing: Icon(Icons.more_vert)),
    );
  }
}
