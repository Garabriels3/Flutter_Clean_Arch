import 'package:bytebank/app/presentation/viewmodel/iteris/iteris_viewmodel.dart';
import 'package:bytebank/app/presentation/widget/loading.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'iteris_widget.dart';

class IterisPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IterisState();
  }
}

class IterisState extends State<IterisPage> with IterisWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final viewModel = serviceLocator<IterisViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Loading(
          message: LOADING,
          status: viewModel.isLoading,
          child: Scaffold(
              key: _scaffoldKey,
              body: SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: form(context)),
              )));
    });
  }
}
