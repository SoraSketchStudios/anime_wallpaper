import 'package:core/core.dart';
import 'package:data/service_server/service/openAI_service.dart';
import 'package:domain/domain.dart';

@Injectable(as: OpenAIRepo)
class OpenAiRepoImp implements OpenAIRepo {
  OpenAIService openAIService = OpenAIService(getIt<DioInfo>().dio());
  OpenAiRepoImp();
  @override
  Future<String?> createMemory(String prompt) {
    return openAIService
        .responseChat(
          ChatParam(
            messages: [
              MessagesModel(content: createPrompt(prompt), role: "user")
            ],
          ),
        )
        .then((value) => value.choices?.first.message?.content);
  }
}

String createPrompt(String word) {
  return """Tôi có từ "$word", Bạn hãy tạo một ấn tượng mạnh để tôi ghi nhớ sâu nghĩa của từ này.""";
}
