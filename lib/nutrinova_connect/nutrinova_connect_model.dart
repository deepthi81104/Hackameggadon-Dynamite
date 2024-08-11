import '/flutter_flow/flutter_flow_util.dart';
import 'nutrinova_connect_widget.dart' show NutrinovaConnectWidget;
import 'package:flutter/material.dart';

class NutrinovaConnectModel extends FlutterFlowModel<NutrinovaConnectWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
