import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'exercisebackend_model.dart';
export 'exercisebackend_model.dart';

class ExercisebackendWidget extends StatefulWidget {
  const ExercisebackendWidget({super.key});

  @override
  State<ExercisebackendWidget> createState() => _ExercisebackendWidgetState();
}

class _ExercisebackendWidgetState extends State<ExercisebackendWidget> {
  late ExercisebackendModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExercisebackendModel());

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
            'Your suggested workouts',
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
              Container(
                width: 398.0,
                height: 182.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.31, 0.0),
                          child: Lottie.asset(
                            'assets/lottie_animations/Animation_-_1723307062039.json',
                            width: 221.0,
                            height: 111.0,
                            fit: BoxFit.fill,
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.68, 0.23),
                      child: Container(
                        width: 213.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          border: Border.all(
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.85, -0.12),
                          child: Text(
                            'A treadmill workout boosts\n cardiovascular health, burns\n calories, and enhances endurance.\n Ideal for consistent,\n low-impact cardiovascular\n exercise routines.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 398.0,
                height: 182.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.22, 0.06),
                          child: Lottie.asset(
                            'assets/lottie_animations/Animation_-_1723308062294.json',
                            width: 202.0,
                            height: 111.0,
                            fit: BoxFit.fill,
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.68, 0.23),
                      child: Container(
                        width: 213.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          border: Border.all(
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.85, -0.12),
                          child: Text(
                            'The Dead Bug is a core-strengthening exercise  focus on improving stability and coordination. It\'s especially beneficial for enhancing core stability and can be easily modified for beginners ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 398.0,
                height: 182.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.09, 0.14),
                          child: Lottie.asset(
                            'assets/lottie_animations/Animation_-_1723308909281.json',
                            width: 160.0,
                            height: 111.0,
                            fit: BoxFit.fill,
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.68, 0.23),
                      child: Container(
                        width: 213.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          border: Border.all(
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.85, -0.12),
                          child: Text(
                            'Cycling is a low-impact activity that provides numerous health benefits, including improved cardiovascular fitness, strengthened leg muscles, and enhanced overall endurance.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
