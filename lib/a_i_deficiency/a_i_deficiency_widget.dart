import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'a_i_deficiency_model.dart';
export 'a_i_deficiency_model.dart';

class AIDeficiencyWidget extends StatefulWidget {
  const AIDeficiencyWidget({
    super.key,
    String? fooditem,
    required this.carbs,
  }) : fooditem = fooditem ?? 'name';

  final String fooditem;
  final dynamic carbs;

  @override
  State<AIDeficiencyWidget> createState() => _AIDeficiencyWidgetState();
}

class _AIDeficiencyWidgetState extends State<AIDeficiencyWidget> {
  late AIDeficiencyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIDeficiencyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
      ),
    );
  }
}
