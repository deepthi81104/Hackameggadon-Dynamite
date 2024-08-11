import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'v_e_gmeal_model.dart';
export 'v_e_gmeal_model.dart';

class VEGmealWidget extends StatefulWidget {
  const VEGmealWidget({super.key});

  @override
  State<VEGmealWidget> createState() => _VEGmealWidgetState();
}

class _VEGmealWidgetState extends State<VEGmealWidget> {
  late VEGmealModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VEGmealModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'VEG MEAL RECIPE',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -0.99),
                child: Container(
                  width: 400.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                      child: Image.asset(
                        'assets/images/QUIONA.jpg',
                        width: 200.0,
                        height: 170.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 402.0,
                height: 595.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Nutritional Information (per serving):\n\nCalories: 400 kcal\nProtein: 12g\nCarbohydrates: 60g\nFiber: 8g\nSugars: 6g\nFat: 10g\nSaturated Fat: 2g\nCholesterol: 10mg\nSodium: 300mg\nVitamins and Minerals:\nVitamin A: 20% Daily Value (DV)\nVitamin C: 30% DV\nIron: 15% DV\nCalcium: 10% DV\n\nMeal Preparation Steps:\n1.Cook the quinoa according to package instructions and let it cool.\n2.Chop the vegetables into bite-sized pieces.\n3.In a large bowl, combine the quinoa and vegetables.\n4.Drizzle with olive oil and lemon juice, then season with salt and pepper.\n5.Toss to combine.\n6.Top with crumbled feta cheese if desired.',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
