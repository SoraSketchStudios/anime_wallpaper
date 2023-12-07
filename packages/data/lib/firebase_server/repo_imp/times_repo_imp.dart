import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

@LazySingleton(as: TimesUseCase)
class TimesRepoImp implements TimesUseCase {
  final SharedPreferenceApp sharedPreferenceApp;

  TimesRepoImp(this.sharedPreferenceApp);

  @override
  Future<int> increaseTimes() async {
    return sharedPreferenceApp.increaseTime();
  }

  @override
  Future<int> initTimes() async {
    return await sharedPreferenceApp.init();
  }
}
