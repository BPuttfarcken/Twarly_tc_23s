import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/wallet_entrys/flyer_twarly/flyer_twarly_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_flyer_twarly_model.dart';
export 'add_flyer_twarly_model.dart';

class AddFlyerTwarlyWidget extends StatefulWidget {
  const AddFlyerTwarlyWidget({Key? key}) : super(key: key);

  @override
  _AddFlyerTwarlyWidgetState createState() => _AddFlyerTwarlyWidgetState();
}

class _AddFlyerTwarlyWidgetState extends State<AddFlyerTwarlyWidget> {
  late AddFlyerTwarlyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddFlyerTwarlyModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed('Home');
                        },
                        child: Text(
                          'Cancel',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF58A778),
                                    fontSize: 18.0,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      child: VerticalDivider(
                        width: 220.0,
                        thickness: 0.0,
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed('Wallet');
                      },
                      child: Text(
                        'Pick up',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF58A778),
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.flyerTwarlyModel,
                    updateCallback: () => setState(() {}),
                    child: FlyerTwarlyWidget(),
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
