import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'exercise_widget.dart' show ExerciseWidget;
import 'package:flutter/material.dart';

class ExerciseModel extends FlutterFlowModel<ExerciseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for userAge widget.
  FocusNode? userAgeFocusNode;
  TextEditingController? userAgeTextController;
  String? Function(BuildContext, String?)? userAgeTextControllerValidator;
  // State field(s) for userFitnessLevel widget.
  String? userFitnessLevelValue;
  FormFieldController<String>? userFitnessLevelValueController;
  // State field(s) for userActivityLevel widget.
  String? userActivityLevelValue;
  FormFieldController<String>? userActivityLevelValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    userAgeFocusNode?.dispose();
    userAgeTextController?.dispose();
  }
}
