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

class GeminiAITextCall {
  static Future<ApiCallResponse> call({
    String? apiKey = 'AIzaSyA3ZjSYIKXCEgtpiEG31e0Zlxx_kMpO9E8',
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [
    {
      "parts": [
        {
          "text": "$prompt"
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gemini AI Text',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=$apiKey',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? textResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
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
