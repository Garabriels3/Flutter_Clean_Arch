// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TransactionListViewModel on TransactionListViewModelBase, Store {
  final _$transactionAtom =
      Atom(name: 'TransactionListViewModelBase.transaction');

  @override
  List<Transaction> get transaction {
    _$transactionAtom.context.enforceReadPolicy(_$transactionAtom);
    _$transactionAtom.reportObserved();
    return super.transaction;
  }

  @override
  set transaction(List<Transaction> value) {
    _$transactionAtom.context.conditionallyRunInAction(() {
      super.transaction = value;
      _$transactionAtom.reportChanged();
    }, _$transactionAtom, name: '${_$transactionAtom.name}_set');
  }

  final _$TransactionListViewModelBaseActionController =
      ActionController(name: 'TransactionListViewModelBase');

  @override
  dynamic addTransaction(Transaction value) {
    final _$actionInfo =
        _$TransactionListViewModelBaseActionController.startAction();
    try {
      return super.addTransaction(value);
    } finally {
      _$TransactionListViewModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
