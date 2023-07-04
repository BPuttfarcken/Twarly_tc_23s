import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'personal_q_r_code_model.dart';
export 'personal_q_r_code_model.dart';

class PersonalQRCodeWidget extends StatefulWidget {
  const PersonalQRCodeWidget({Key? key}) : super(key: key);

  @override
  _PersonalQRCodeWidgetState createState() => _PersonalQRCodeWidgetState();
}

class _PersonalQRCodeWidgetState extends State<PersonalQRCodeWidget> {
  late PersonalQRCodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalQRCodeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 180.0,
      height: 180.0,
      decoration: BoxDecoration(
        color: Color(0xFFF1F4F8),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 280.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(17.5, 17.5, 0.0, 0.0),
              child: Container(
                width: 145.0,
                height: 145.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F4F8),
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0.0, 0.0),
              child: BarcodeWidget(
                data: currentUserUid,
                barcode: Barcode.qrCode(),
                width: 120.0,
                height: 120.0,
                color: Colors.black,
                backgroundColor: Colors.transparent,
                errorBuilder: (_context, _error) => SizedBox(
                  width: 120.0,
                  height: 120.0,
                ),
                drawText: false,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.03, -0.96),
              child: Container(
                width: 90.0,
                height: 25.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F4F8),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.02, -0.87),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    child: Text(
                      'SCAN ME',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
