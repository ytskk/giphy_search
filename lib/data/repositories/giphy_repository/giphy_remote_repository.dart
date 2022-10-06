import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:giphy/constants/constants.dart';
import 'package:giphy/data/data.dart';
import 'package:giphy/features/features.dart';

class GiphyRemoteRepository implements GiphyRepositoryInterface {
  const GiphyRemoteRepository({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<SearchResponseModel> search({
    required String apiKey,
    required String q,
    int? limit,
    int? offset,
  }) async {
    try {
      final res = await _dio.get(
        ApiConstants.search,
        queryParameters: {
          'api_key': apiKey,
          'q': q,
          'limit': limit,
          'offset': offset,
        },
      );

      return SearchResponseModel.fromJson(res.data);
    } catch (e) {
      log('error: $e', name: 'GiphyRemoteRepository::search::error');
      rethrow;
    }
  }
}
