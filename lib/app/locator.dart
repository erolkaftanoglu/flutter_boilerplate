import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import './locator.config.dart';

final locator = GetIt.instance;

// @InjectableInit(
//   initializerName: 'init',
//   preferRelativeImports: true,
//   asExtension: true,
// )
// void setupLocator() {
//   locator.registerLazySingleton(() => NavigationService());
//   locator.registerLazySingleton(() => DialogService());
// }
// @InjectableInit(
//   initializerName: r'$initGetIt', // default
//   preferRelativeImports: true, // default
//   asExtension: true, // default
// )
// void configureDependencies() => $initGetIt(locator);

@InjectableInit()
void setupLocator() => $initGetIt(locator);
