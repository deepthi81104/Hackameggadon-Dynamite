import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'geminiconnect_widget.dart' show GeminiconnectWidget;
import 'package:flutter/material.dart';

class GeminiconnectModel extends FlutterFlowModel<GeminiconnectWidget> {
  ///  Local state fields for this page.

  String apiResponse = 'unset';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Gemini AI Text)] action in Button widget.
  ApiCallResponse? apiResult6fw;
  // State field(s) for promptField widget.
  FocusNode? promptFieldFocusNode;
  TextEditingController? promptFieldTextController;
  String? Function(BuildContext, String?)? promptFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promptFieldFocusNode?.dispose();
    promptFieldTextController?.dispose();
  }
}
