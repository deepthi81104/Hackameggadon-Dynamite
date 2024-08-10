import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_nutrition_widget.dart' show AINutritionWidget;
import 'package:flutter/material.dart';

class AINutritionModel extends FlutterFlowModel<AINutritionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fooditem widget.
  FocusNode? fooditemFocusNode;
  TextEditingController? fooditemTextController;
  String? Function(BuildContext, String?)? fooditemTextControllerValidator;
  // Stores action output result for [Backend Call - API (NutrtionFacts)] action in nutrition widget.
  ApiCallResponse? apiResult41u;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fooditemFocusNode?.dispose();
    fooditemTextController?.dispose();
  }
}
