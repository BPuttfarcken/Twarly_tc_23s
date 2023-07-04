import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/header_v2/header_v2_widget.dart';
import '/widgets/personal_q_r_code/personal_q_r_code_widget.dart';
import '/widgets/task_bar/task_bar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFD8D8D8),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            wrapWithModel(
              model: _model.headerV2Model,
              updateCallback: () => setState(() {}),
              child: HeaderV2Widget(),
            ),
            wrapWithModel(
              model: _model.personalQRCodeModel,
              updateCallback: () => setState(() {}),
              child: PersonalQRCodeWidget(),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  _model.wasteScan = await FlutterBarcodeScanner.scanBarcode(
                    '#C62828', // scanning line color
                    'Cancel', // cancel button text
                    true, // whether to show the flash icon
                    ScanMode.QR,
                  );

                  _shouldSetState = true;
                  if (_model.wasteScan == 'flyer_twarly') {
                    context.goNamed(
                      'AddFlyerTwarly',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.bottomToTop,
                          duration: Duration(milliseconds: 200),
                        ),
                      },
                    );

                    await WasteCounterRecord.collection
                        .doc()
                        .set(createWasteCounterRecordData(
                          wasteWeight: 0.3,
                          wasteSaver:
                              valueOrDefault(currentUserDocument?.userName, ''),
                          userID: currentUserUid,
                          dateTime: getCurrentTimestamp,
                          savedCO2: 1.3,
                          savedItem: _model.wasteScan,
                        ));
                    if (_shouldSetState) setState(() {});
                    return;
                  } else {
                    if (_model.wasteScan == 'businesscard') {
                      await WasteCounterRecord.collection
                          .doc()
                          .set(createWasteCounterRecordData(
                            wasteWeight: 0.1,
                            wasteSaver: valueOrDefault(
                                currentUserDocument?.userName, ''),
                            userID: currentUserUid,
                            dateTime: getCurrentTimestamp,
                            savedCO2: 1.1,
                            savedItem: _model.wasteScan,
                          ));
                      if (_shouldSetState) setState(() {});
                      return;
                    }
                  }

                  if (_shouldSetState) setState(() {});
                },
                text: 'Scan',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF99C2AE),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.taskBarModel,
                  updateCallback: () => setState(() {}),
                  child: TaskBarWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
