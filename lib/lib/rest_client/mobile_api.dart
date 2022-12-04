import 'package:dio/dio.dart';
import 'package:prog1/model/example_list.dart';
import 'package:prog1/model/profile.dart';
import 'package:retrofit/retrofit.dart';

part 'mobile_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class MobileClient {
  factory MobileClient(Dio dio, {String baseUrl}) = _MobileClient;

  @GET("posts/1")
  Future<Profile> getProfileData();

  @GET("posts")
  Future<List<ExampleList>> getNewsData();

  @GET("posts")
  Future<List<ExampleList>> getListData();


}