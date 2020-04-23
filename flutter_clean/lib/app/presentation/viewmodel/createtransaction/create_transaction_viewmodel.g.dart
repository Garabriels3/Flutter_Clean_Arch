// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateTransactionViewModel on CreateTransactionViewModelBase, Store {
  final _$amountAtom = Atom(name: 'CreateTransactionViewModelBase.amount');

  @override
  String get amount {
    _$amountAtom.context.enforceReadPolicy(_$amountAtom);
    _$amountAtom.reportObserved();
    return super.amount;
  }

  @override
  set amount(String value) {
    _$amountAtom.context.conditionallyRunInAction(() {
      super.amount = value;
      _$amountAtom.reportChanged();
    }, _$amountAtom, name: '${_$amountAtom.name}_set');
  }

  final _$numberAtom = Atom(name: 'CreateTransactionViewModelBase.number');

  @override
  String get number {
    _$numberAtom.context.enforceReadPolicy(_$numberAtom);
    _$numberAtom.reportObserved();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.context.conditionallyRunInAction(() {
      super.number = value;
      _$numberAtom.reportChanged();
    }, _$numberAtom, name: '${_$numberAtom.name}_set');
  }

  final _$CreateTransactionViewModelBaseActionController =
      ActionController(name: 'CreateTransactionViewModelBase');

  @override
  dynamic setAmount(String value) {
    final _$actionInfo =
        _$CreateTransactionViewModelBaseActionController.startAction();
    try {
      return super.setAmount(value);
    } finally {
      _$CreateTransactionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumber(String value) {
    final _$actionInfo =
        _$CreateTransactionViewModelBaseActionController.startAction();
    try {
      return super.setNumber(value);
    } finally {
      _$CreateTransactionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
