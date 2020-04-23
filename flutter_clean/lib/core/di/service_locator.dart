import 'package:bytebank/app/data/repository/cc_repository.dart';
import 'package:bytebank/app/data/repository/employee_repository.dart';
import 'package:bytebank/app/data/source/remote/cc_service.dart';
import 'package:bytebank/app/data/source/remote/employee_service.dart';
import 'package:bytebank/app/domain/repository/cc_repository.dart';
import 'package:bytebank/app/domain/repository/employee_repository.dart';
import 'package:bytebank/app/domain/usecase/cc_usecase.dart';
import 'package:bytebank/app/domain/usecase/employee_usecase.dart';
import 'package:bytebank/app/presentation/viewmodel/createtransaction/create_transaction_viewmodel.dart';
import 'package:bytebank/app/presentation/viewmodel/iteris/iteris_viewmodel.dart';
import 'package:bytebank/app/presentation/viewmodel/transactionlist/transaction_list_viewmodel.dart';
import 'package:bytebank/core/remote/http_client.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  //Components
  serviceLocator.registerSingleton<AppHttpClient>(new AppHttpClient());

  //Remote Services
  serviceLocator
      .registerLazySingleton<EmployeeService>(() => new EmployeeService());
  serviceLocator.registerLazySingleton<CCService>(() => new CCService());

  //Use Cases
  serviceLocator.registerFactory<EmployeeUseCase>(() => new EmployeeUseCase());
  serviceLocator.registerFactory<CCUseCase>(() => new CCUseCase());

  //Repositories
  serviceLocator.registerLazySingleton<EmployeeRepository>(
      () => new EmployeeRepositoryImpl());
  serviceLocator
      .registerLazySingleton<CCRepository>(() => new CCRepositoryImpl());

  //ViewModels
  serviceLocator.registerLazySingleton<CreateTransactionViewModel>(
      () => new CreateTransactionViewModel());
  serviceLocator.registerLazySingleton<TransactionListViewModel>(
      () => new TransactionListViewModel());
  serviceLocator
      .registerLazySingleton<IterisViewModel>(() => new IterisViewModel());
}
