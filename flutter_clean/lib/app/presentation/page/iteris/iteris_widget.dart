import 'package:bytebank/app/presentation/viewmodel/iteris/iteris_viewmodel.dart';
import 'package:bytebank/app/presentation/widget/toast.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/fonts.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:flutter/material.dart';


class IterisWidget  {
  final viewModel = serviceLocator<IterisViewModel>();

  Widget form(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CREATE_TRANSFER),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                await viewModel.getAll();
                CustomToast.show(viewModel.message);
              },
              child: const Text(FIRST_API,
                  style: TextStyle(fontSize: TWENTY_SIZE)),
            ),
            RaisedButton(
              onPressed: () async {
                await viewModel.cc();
                CustomToast.show(viewModel.message);
              },
              child: const Text(SECOND_API,
                  style: TextStyle(fontSize: TWENTY_SIZE)),
            ),
          ],
        ),
      ),
    );
  }
}
