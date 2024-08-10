import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NutrtionFactsCall {
  static Future<ApiCallResponse> call({
    String? fooditem = 'Apple',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'NutrtionFacts',
      apiUrl: 'https://api.edamam.com/api/nutrition-data',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'app_id': "bbb32883",
        'app_key': " a0b5cb2236ac920e0afa8c2436fd0a18\t",
        'ingr': fooditem,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? protien(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalNutrients.PROCNT.quantity''',
      ));
  static double? fat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalNutrients.FAT.quantity''',
      ));
  static double? carbs(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalNutrients.CHOCDF.quantity''',
      ));
  static double? fibre(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalNutrients.FIBTG.quantity''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
