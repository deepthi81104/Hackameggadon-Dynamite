import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nonvegmeal_model.dart';
export 'nonvegmeal_model.dart';

class NonvegmealWidget extends StatefulWidget {
  const NonvegmealWidget({super.key});

  @override
  State<NonvegmealWidget> createState() => _NonvegmealWidgetState();
}

class _NonvegmealWidgetState extends State<NonvegmealWidget> {
  late NonvegmealModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NonvegmealModel());

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
            'NON-VEG MEAL RECIPE',
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
                        'assets/images/images.jpg',
                        width: 200.0,
                        height: 170.0,
                        fit: BoxFit.contain,
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
                    'Nutritional Information (per serving):\n\nCalories: 350 kcal\nProtein: 30g\nCarbohydrates: 15g\nFiber: 4g\nSugars: 5g\nFat: 18g\nSaturated Fat: 3g\nCholesterol: 80mg\nSodium: 600mg\nVitamins and Minerals:\nVitamin A: 25% Daily Value (DV)\nVitamin C: 30% DV\nIron: 10% DV\nCalcium: 8% DV\n\nMeal Preparation Steps:\n1.Season the chicken breast with salt, pepper, and a drizzle of olive oil.\n2.Grill the chicken over medium heat until fully cooked, about 6-8 minutes per side. 3.Let it rest before slicing.\n4.In a large bowl, combine the mixed greens, cherry tomatoes, cucumber, and red onion.\n5.Slice the grilled chicken and place it on top of the salad.\n6.Drizzle with balsamic vinaigrette dressing.\nToss gently to combine.',
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
