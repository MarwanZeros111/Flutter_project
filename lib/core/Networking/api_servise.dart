import 'package:advanced_test/Features/login/data/models/login_request_body.dart';
import 'package:advanced_test/Features/login/data/models/login_response.dart';
import 'package:advanced_test/core/Networking/api_constant.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'api_servise.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
