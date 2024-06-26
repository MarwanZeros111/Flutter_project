import 'package:advanced_test/Features/login/data/models/login_request_body.dart';
import 'package:advanced_test/Features/login/data/models/login_response.dart';
import 'package:advanced_test/core/Networking/api_error_handler.dart';
import 'package:advanced_test/core/Networking/api_result.dart';
import 'package:advanced_test/core/Networking/api_servise.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
