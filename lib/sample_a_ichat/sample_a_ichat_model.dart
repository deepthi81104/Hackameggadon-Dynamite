import '/flutter_flow/flutter_flow_util.dart';
import 'sample_a_ichat_widget.dart' show SampleAIchatWidget;
import 'package:flutter/material.dart';

class SampleAIchatModel extends FlutterFlowModel<SampleAIchatWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
