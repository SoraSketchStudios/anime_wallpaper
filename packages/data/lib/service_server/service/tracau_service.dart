import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:retrofit/retrofit.dart';

part 'tracau_service.g.dart';

@RestApi(baseUrl: "https://api.tracau.vn/WBBcwnwQpV89/s")
abstract class TraCauService {
  factory TraCauService(Dio dio, {String baseUrl}) = _TraCauService;

  @GET("/{value}/en")
  Future<TraCauModel> responseTraTu(
      @Path("value") String text,
      );
}
