import 'package:bytebank/app/presentation/viewmodel/createtransaction/create_transaction_viewmodel.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/fonts.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:flutter/material.dart';

class TransferCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferCreateState();
  }
}

class TransferCreateState extends State<StatefulWidget> {
  final viewModel = serviceLocator<CreateTransactionViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CREATE_TRANSFER),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(SIXTEEN_SIZE),
              child: TextField(
                onChanged: viewModel.setAmount,
                style: TextStyle(fontSize: TWENTY_FOUR_SIZE),
                decoration: InputDecoration(
                    labelText: BANK_NUMBER, hintText: BANK_NUMBER_HINT),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(SIXTEEN_SIZE),
              child: TextField(
                onChanged: viewModel.setNumber,
                style: TextStyle(fontSize: TWENTY_FOUR_SIZE),
                decoration:
                    InputDecoration(labelText: VALUE, hintText: VALUE_HINT),
                keyboardType: TextInputType.number,
              ),
            ),
//            InputWidget(
//                controller: _numberController,
//                label: BANK_NUMBER,
//                hint: BANK_NUMBER_HINT),
//            InputWidget(
//                controller: _amountController,
//                label: VALUE,
//                hint: VALUE_HINT,
//                icon: Icon(Icons.monetization_on)),
            RaisedButton(
              onPressed: () {
                var transfer = viewModel.createTransfer();
                if (transfer != null) {
                  Navigator.pop(context, transfer);
                }
              },
              child: const Text(CONFIRMATION,
                  style: TextStyle(fontSize: TWENTY_SIZE)),
            ),
          ],
        ),
      ),
    );
  }
}
