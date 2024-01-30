import 'dart:async';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:retrofit/retrofit.dart';

part 'openAI_service.g.dart';

@RestApi(baseUrl: "https://gpt.getdata.one/")
abstract class OpenAIService {
  factory OpenAIService(Dio dio, {String baseUrl}) = _OpenAIService;

  @POST("/chat/response")
  Future<ChatResponseModel> responseChat(
      @Body() ChatParam chatParam,
      );
}
