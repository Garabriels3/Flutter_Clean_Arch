// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iteris_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IterisViewModel on IterisViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: 'IterisViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$messageAtom = Atom(name: 'IterisViewModelBase.message');

  @override
  String get message {
    _$messageAtom.context.enforceReadPolicy(_$messageAtom);
    _$messageAtom.reportObserved();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.context.conditionallyRunInAction(() {
      super.message = value;
      _$messageAtom.reportChanged();
    }, _$messageAtom, name: '${_$messageAtom.name}_set');
  }

  final _$IterisViewModelBaseActionController =
      ActionController(name: 'IterisViewModelBase');

  @override
  dynamic _setLoading(bool value) {
    final _$actionInfo = _$IterisViewModelBaseActionController.startAction();
    try {
      return super._setLoading(value);
    } finally {
      _$IterisViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setMessage(String value) {
    final _$actionInfo = _$IterisViewModelBaseActionController.startAction();
    try {
      return super._setMessage(value);
    } finally {
      _$IterisViewModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
