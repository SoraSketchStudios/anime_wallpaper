import 'package:domain/domain.dart';

abstract class TraCauRepo {
  Future<TraCauModel?> responseTraTu(String value);
}
