import 'package:core/core.dart';
import 'package:data/service_server/service/tracau_service.dart';
import 'package:domain/domain.dart';

@Injectable(as: TraCauRepo)
class TraCauRepoImp implements TraCauRepo {
  TraCauService traCauService = TraCauService(getIt<DioInfo>().dio());

  @override
  Future<TraCauModel?> responseTraTu(String text) {
    return traCauService.responseTraTu(text);
  }
}
