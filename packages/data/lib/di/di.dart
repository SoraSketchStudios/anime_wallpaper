import 'package:core/core.dart';

import 'di.config.dart';


@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependenciesData() => getIt.init();