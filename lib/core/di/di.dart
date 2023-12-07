import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/di/di.dart';

import 'di.config.dart';

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

void configureDependenciesApp() {
  configureDependenciesCore();
  configureDependenciesDomain();
  configureDependenciesData();
  configureDependencies();
}
